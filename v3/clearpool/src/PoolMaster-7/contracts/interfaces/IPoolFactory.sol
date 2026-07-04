//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {RewardAsset} from '../libraries/RewardAsset.sol';

/**
 * @title Interface for a `PoolFactory.sol`;
 */

interface IPoolFactory {
  function checkKycStatus(address _account) external;

  function checkBorrowerStatus(address _borrower) external;

  function owner() external view returns (address);

  function getPoolConfigVars()
    external
    view
    returns (uint256, uint256, uint256, uint256, RewardAsset.RewardAssetData[] memory);

  function treasury() external view returns (address);

  function auction() external view returns (address);

  function isPool(address pool) external view returns (bool);

  function processPoolAuctionStart(address pool) external;

  function processPoolAuctionEnd(address pool, uint256 claimedAmount) external;
}

interface IPoolFactoryLite {
  function whitelistLender(address _lender) external;

  function whitelistBorrower(address _borrower) external;

  function blacklistLender(address _lender) external;

  function blacklistBorrower(address _borrower) external;

  function whitelistedLenders(address _account) external view returns (bool);

  function whitelistedBorrowers(address _account) external view returns (bool);
}
