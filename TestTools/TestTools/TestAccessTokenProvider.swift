/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import FBSDKCoreKit

public final class TestAccessTokenProvider: _AccessTokenProviding {

  public static var stubbedAccessToken: AccessToken?
  public static var tokenCache: TokenCaching?
  public static var current: AccessToken? {
    get { stubbedAccessToken }
    set {} // swiftlint:disable:this unused_setter_value
  }

  public init() {}

  public static func reset() {
    tokenCache = nil
    stubbedAccessToken = nil
  }
}
