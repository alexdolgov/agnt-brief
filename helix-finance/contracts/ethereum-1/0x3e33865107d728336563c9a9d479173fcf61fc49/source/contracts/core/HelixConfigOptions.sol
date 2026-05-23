// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

/**
 * @title ConfigOptions
 * @notice A central place for enumerating the configurable options of our HelixConfig contract
 * @author Helix
 */

library HelixConfigOptions {
  enum Addresses {
    HelixFactory, // 0
    HelixDealTokens, // 1
    GnosisSafeFactory,  // 2
    GnosisSafeSingleton, // 3
    USDC, // 4
    ProtocolAdmin, // 5
    HelixConfig, // 6
    Authoriser, // 7
    DealImplementationRepository // 8
  }
}
