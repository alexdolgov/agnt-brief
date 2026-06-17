// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;
pragma abicoder v2;

import "@cryptoalgebra/integral-farming/contracts/base/IncentiveKey.sol";
import { IFarmingCenter } from "@cryptoalgebra/integral-farming/contracts/interfaces/IFarmingCenter.sol";

interface IIncentiveMaker{

   function poolToKey(address pool) external view returns (IncentiveKey memory);
   function farmingCenter() external view returns (IFarmingCenter);

}