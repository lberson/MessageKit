/*
 MIT License

 Copyright (c) 2017-2022 MessageKit

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation
import UIKit
import Combine
import InputBarAccessoryView

extension MessagesViewController {
    class State {
        /// Pan gesture for display the date of message by swiping left.
        var panGesture: UIPanGestureRecognizer?

        let inputContainerView: MessagesInputContainerView = .init()
        let keyboardManager: KeyboardManager = KeyboardManager()
        var disposeBag: Set<AnyCancellable> = .init()
    }

    // MARK: - Getters

    var inputContainerView: MessagesInputContainerView { state.inputContainerView }
    var keyboardManager: KeyboardManager { state.keyboardManager }

    var panGesture: UIPanGestureRecognizer? {
        get { state.panGesture }
        set { state.panGesture = newValue }
    }

    var disposeBag: Set<AnyCancellable> {
        get { state.disposeBag }
        set { state.disposeBag = newValue }
    }
}
