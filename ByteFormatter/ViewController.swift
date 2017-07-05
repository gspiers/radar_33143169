//
//  ViewController.swift
//  ByteFormatter
//
//  Created by Greg Spiers on 05/07/2017.
//  Copyright © 2017 Greg Spiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let duration: TimeInterval = 3675
    private let dateComponentsFormatter = DateComponentsFormatter()
    private let dateComponentsFormatterVoiceOver = DateComponentsFormatter()

    private let filesize: Int64 = 1024 * 1024 * 1024 * 5
    private let byteCountFormatter = ByteCountFormatter()
    private let byteCountFormatterVoiceOver = ByteCountFormatter()

    @IBOutlet weak var simpleFilesizeLabel: UILabel!
    @IBOutlet weak var filesizeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        dateComponentsFormatter.unitsStyle = .abbreviated
        dateComponentsFormatterVoiceOver.unitsStyle = .spellOut

        durationLabel.text = dateComponentsFormatter.string(from: duration)
        durationLabel.accessibilityLabel = dateComponentsFormatterVoiceOver.string(from: duration)

        simpleFilesizeLabel.text = byteCountFormatter.string(fromByteCount: filesize)
        filesizeLabel.text = "Download (\(byteCountFormatter.string(fromByteCount: filesize)))"

        /* Would be really nice to have a way to spell out the units for ByteCountFormatter */
        /*
         byteCountFormatterVoiceOver.unitsStyle = .spellOut
         filesizeLabel.accessibilityLabel = byteCountFormatterVoiceOver.string(fromByteCount: filesize)
         */
    }

}

