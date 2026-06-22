//
//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// Copyright (c) 2021 dHEDGE DAO
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//
// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import "../interfaces/IHasAssetInfo.sol";

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";

/// @notice A Solo pool mock of the Pool Manager Logic
/// @dev It ensures that the Solo pool is compatible with the transaction guards
contract SoloPoolManagerLogic is Initializable {
  using SafeMathUpgradeable for uint256;

  address public dhedgePoolFactory; // the existing dHEDGE V2 pool factory
  address public poolLogic; // the solo pool logic, for existing contract guard compatibility

  /// @notice Initialize the pool
  /// @param _dhedgePoolFactory address of the existing dHEDGE V2 pool factory
  function initialize(address _dhedgePoolFactory, address _poolLogic) external initializer {
    dhedgePoolFactory = _dhedgePoolFactory;
    poolLogic = _poolLogic;
  }

  /// @notice For solo pools, it returns true for any valid dHEDGE asset
  /// @param asset address of the asset
  function isSupportedAsset(address asset) public view returns (bool) {
    return validateAsset(asset);
  }

  /// @notice Returns true if it's a valid asset from the dHEDGE Pool Factory, false otherwise
  /// @param asset address of the asset
  function validateAsset(address asset) public view returns (bool) {
    return IHasAssetInfo(dhedgePoolFactory).isValidAsset(asset);
  }
}
