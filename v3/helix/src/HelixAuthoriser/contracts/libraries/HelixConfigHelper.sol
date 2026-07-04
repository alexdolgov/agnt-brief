// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import {ImplementationRepository} from "../proxy/ImplementationRepository.sol";
import {HelixConfigOptions} from "../core/HelixConfigOptions.sol";
import {IHelixConfig} from "../interfaces/IHelixConfig.sol";
import {IERC20withDec} from "../interfaces/IERC20withDec.sol";
import {IHelixFactory} from "../interfaces/IHelixFactory.sol";
import {IHelixAuthoriser} from "../interfaces/IHelixAuthoriser.sol";
import {IHelixDealTokens} from "../interfaces/IHelixDealTokens.sol";

/**
 * @title ConfigHelper
 * @notice A convenience library for getting easy access to other contracts and constants within the
 *  protocol, through the use of the HelixConfig contract
 * @author Helix
 */

library HelixConfigHelper {
  function getUSDC(IHelixConfig config) internal view returns (IERC20withDec) {
    return IERC20withDec(usdcAddress(config));
  }

  function getHelixDealTokens(IHelixConfig config) internal view returns (IHelixDealTokens) {
    return IHelixDealTokens(helixDealTokensAddress(config));
  }

  function getHelixFactory(IHelixConfig config) internal view returns (IHelixFactory) {
    return IHelixFactory(helixFactoryAddress(config));
  }

  function getAuthoriser(IHelixConfig config) internal view returns (IHelixAuthoriser) {
    return IHelixAuthoriser(authoriserAddress(config));
  }

  function getDealImplementationRepository(
    IHelixConfig config
  ) internal view returns (ImplementationRepository) {
    return
      ImplementationRepository(
        config.getAddress(uint256(HelixConfigOptions.Addresses.DealImplementationRepository))
      );
  }

  function getGnosisSafeSingleton(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.GnosisSafeSingleton));
  }

  function getGnosisSafeFactory(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.GnosisSafeFactory));
  }

  function protocolAdminAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.ProtocolAdmin));
  }

  function configAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.HelixConfig));
  }
  function helixFactoryAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.HelixFactory));
  }

  function helixDealTokensAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.HelixDealTokens));
  }

  function usdcAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.USDC));
  }

  function authoriserAddress(IHelixConfig config) internal view returns (address) {
    return config.getAddress(uint256(HelixConfigOptions.Addresses.Authoriser));
  }
}
