// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import { GnosisSafe } from "@gnosis.pm/safe-contracts/contracts/GnosisSafe.sol";
import { GnosisSafeProxyFactory } from "@gnosis.pm/safe-contracts/contracts/proxies/GnosisSafeProxyFactory.sol";

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { VelvetSafeModule } from "../vault/VelvetSafeModule.sol";
import { ErrorLibrary } from "./ErrorLibrary.sol";
import { IMultiSend } from "../interfaces/vault/IMultiSend.sol";
import { IGnosisSafe } from "../interfaces/vault/IGnosisSafe.sol";

import { FunctionParameters } from "../FunctionParameters.sol";
import "hardhat/console.sol";

library GnosisDeployer {
  function _deployGnosisSafeAndModule(
    FunctionParameters.SafeAndModuleDeploymentParams memory params
  ) internal returns (address gnosisSafe, address velvetModule) {
    GnosisSafeProxyFactory gnosisSafeProxyFactory = GnosisSafeProxyFactory(
      params._gnosisSafeProxyFactory
    );

    //  Generate a deterministic nonce for Safe (Same for a user on all chains)
    uint256 safeSaltNonce = uint256(
      keccak256(abi.encodePacked(params._owners, "safe"))
    );

    //  Deploy Gnosis Safe Proxy (Keeps upgradability via `_gnosisSingleton`)
    GnosisSafe _safe = GnosisSafe(
      payable(
        gnosisSafeProxyFactory.createProxyWithNonce(
          params._gnosisSingleton,
          bytes(""), // No initialization calldata needed
          safeSaltNonce
        )
      )
    );

    //  Generate a deterministic salt for the Safe Module (for omnichain determinism)
    bytes32 moduleSalt = keccak256(
      abi.encodePacked(params._owners[0], "module")
    );

     VelvetSafeModule _gnosisModule = VelvetSafeModule(
      Clones.clone(params._baseGnosisModule)
    );

    // address _gnosisModule = _deployGnosisModule(
    //   params._safeSingletonFactory,
    //   moduleSalt,
    //   type(VelvetSafeModule).creationCode
    // );

    bytes memory _enableSafeModule = abi.encodeCall(
      IGnosisSafe.enableModule,
      address(_gnosisModule)
    );
    bytes memory _enableVelvetMultisend = abi.encodePacked(
      uint8(0),
      _safe,
      uint256(0),
      uint256(_enableSafeModule.length),
      bytes(_enableSafeModule)
    );

    bytes memory _multisendAction = abi.encodeCall(
      IMultiSend.multiSend,
      _enableVelvetMultisend
    );

    address gnosisFallbackLibrary = params._gnosisFallbackLibrary;

    _safe.setup(
      params._owners,
      params._threshold,
      params._gnosisMultisendLibrary,
      _multisendAction,
      gnosisFallbackLibrary,
      address(0),
      0,
      payable(address(0))
    );
    gnosisSafe = address(_safe);
    velvetModule = address(_gnosisModule);

    if (!_safe.isModuleEnabled(velvetModule)) {
      revert ErrorLibrary.ModuleNotInitialised();
    }
    return (gnosisSafe, velvetModule);
  }

  function computeCreate2Address(
    address factory,
    bytes32 salt,
    bytes memory bytecode
  ) internal pure returns (address) {
    return
      address(
        uint160(
          uint(
            keccak256(
              abi.encodePacked(bytes1(0xff), factory, salt, keccak256(bytecode))
            )
          )
        )
      );
  }

  function _deployGnosisModule(
    address factory,
    bytes32 salt,
    bytes memory bytecode
  ) internal returns (address) {

    //  Compute expected Module address before deploying
    address _gnosisModule = computeCreate2Address(
      factory, // Using SafeSingletonFactory for CREATE2
      salt,
      bytecode
    );

    console.log("gnosisModule", _gnosisModule);

    //  Deploy Safe Module using SafeSingletonFactory (ensures the same address across chains)
    (bool successModule, ) = factory.call{ value: 0 }(
      abi.encodePacked(salt, bytecode)
    );

    if (!successModule) {
      revert ErrorLibrary.ModuleDeploymentFailed();
    }

    //  Ensure the contract was actually deployed
    uint256 codeSize;
    assembly {
      codeSize := extcodesize(_gnosisModule)
    }
    require(codeSize > 0, "Deployment failed: Contract not found");

    return _gnosisModule;
  }
}
