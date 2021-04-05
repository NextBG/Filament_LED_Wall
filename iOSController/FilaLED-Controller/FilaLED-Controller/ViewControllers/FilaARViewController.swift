//
//  FilaARViewController.swift
//  FilaLED-Controller
//
//  Created by Wangyiwei on 2021/3/31.
//

import UIKit
import ARKit
import RealityKit
import Vision

class FilaARViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    var qrRequests = [VNRequest]()
    var detectedDataAnchor: ARAnchor?
    var processing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arView.session.delegate = self
        let cfg = ARWorldTrackingConfiguration()
        cfg.isAutoFocusEnabled = true
        cfg.planeDetection = .vertical
        arView.session.run(cfg, options: [])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}

extension FilaARViewController: ARSessionDelegate {
    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        //
        
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                if self.processing {
                    return
                }
                self.processing = true
                // Create a request handler using the captured image from the ARFrame
                let imageRequestHandler = VNImageRequestHandler(cvPixelBuffer: frame.capturedImage, options: [:])
                // Process the request
                try imageRequestHandler.perform(self.qrRequests)
            } catch {
            }
        }
    }
}

extension FilaARViewController {
    func startQrCodeDetection() {
        // Create a Barcode Detection Request
        let request = VNDetectBarcodesRequest(completionHandler: self.requestHandler)
        // Set it to recognize QR code only
        request.symbologies = [.QR]
        self.qrRequests = [request]
    }
    
    func requestHandler(request: VNRequest, error: Error?) {
        // Get the first result out of the results, if there are any
        if let results = request.results, let result = results.first as? VNBarcodeObservation {
            guard let payload = result.payloadStringValue else {return}
            // Get the bounding box for the bar code and find the center
            var rect = result.boundingBox
            // Flip coordinates
            rect = rect.applying(CGAffineTransform(scaleX: 1, y: -1))
            rect = rect.applying(CGAffineTransform(translationX: 0, y: 1))
            // Get center
            let center = CGPoint(x: rect.midX, y: rect.midY)
            print(rect, payload)
            DispatchQueue.main.async {
                self.hitTestQrCode(center: center)
                self.processing = false
            }
        } else {
            self.processing = false
        }
    }
    
    func hitTestQrCode(center: CGPoint) {
//        if let hitTestResults = self.latestFrame?.hitTest(center, types: [.featurePoint] ),
//            let hitTestResult = hitTestResults.first {
//            if let detectedDataAnchor = self.detectedDataAnchor,
//                let node = self.sceneView.node(for: detectedDataAnchor) {
//                let previousQrPosition = node.position
//                node.transform = SCNMatrix4(hitTestResult.worldTransform)
//            } else {
//                // Create an anchor. The node will be created in delegate methods
//                self.detectedDataAnchor = ARAnchor(transform: hitTestResult.worldTransform)
//                self.sceneView.session.add(anchor: self.detectedDataAnchor!)
//            }
//        }
    }
}
