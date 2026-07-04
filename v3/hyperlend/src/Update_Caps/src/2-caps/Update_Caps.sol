// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EngineFlags} from '../interfaces/EngineFlags.sol';
import {IPool} from "../interfaces/IPool.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AaveV3Payload} from "hyperlend-core-new/src/contracts/extensions/v3-config-engine/AaveV3Payload.sol";
import {IAaveV3ConfigEngine} from 'hyperlend-core-new/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Update caps on Aviya Market
 * @author HyperLend
 */
contract Update_Caps is AaveV3Payload {
  using SafeERC20 for IERC20;

  address public constant HiHYPE = 0x9437D08f66B70f6dcc4304b535c3aADb3A6bad01;
  address public constant USDH = 0x4953EB031c232BdDe9dF8f92b43c77606c654dE7;

  address public constant POOL = 0x2C8aa0635bb5ed6f2A025747E06a5081b0215a8E;
  address public constant COLLECTOR = 0xe3165B5D0a0FE9bEcAdFB959e3EfdB6DC4614Ba4;
  address public constant CUSTOM_CONFIG_ENGINE = 0x3347F48c5094014e7600D985a1e468D9811401B2;
  address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

  constructor() AaveV3Payload(IAaveV3ConfigEngine(CUSTOM_CONFIG_ENGINE)) {}

    function capsUpdates() public pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
        IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](2);
        
        capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
            asset: USDH,
            supplyCap: 5_000_000,
            borrowCap: 5_000_000
        });

        capsUpdate[1] = IAaveV3ConfigEngine.CapsUpdate({
            asset: HiHYPE,
            supplyCap: 500_000,
            borrowCap: 1
        });

        return capsUpdate;
    }

  function getPoolContext() public pure override returns (IAaveV3ConfigEngine.PoolContext memory) {
    return IAaveV3ConfigEngine.PoolContext({networkName: 'HyperEVM', networkAbbreviation: 'HyperEvm'});
  }
}