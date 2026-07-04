// SPDX-License-Identifier: UNLICENSEDAdd commentMore actions
pragma solidity ^0.8.26;

import "./SlisBNBConverter.sol";

contract BNBSlisBNBConverter is SlisBNBConverter {
  constructor(
    address _slisBNB,
    address _asset,
    address _listaStakeManager
  ) SlisBNBConverter(_slisBNB, _asset, _listaStakeManager) {}

  function convertAssetToSlisBNB(uint256 amount) external payable virtual override returns (uint256) {
    return _convertBNBToSlisBNB(amount);
  }

  function convertSlisBNBToAssetInstant(uint256 amount) external virtual override returns (uint256 assetAmount) {
    revert("Not implemented");
  }

  function convertSlisBNBToAssetRequest(
    address user,
    uint256 amount
  ) external virtual override returns (uint256 requestUUID) {
    requestUUID = _convertSlisBNBToBNB(user, amount);
  }

  function claimRequest(address user, uint256 requestUUID) external virtual override returns (uint256 assetAmount) {
    assetAmount = _withdrawRequest(user, requestUUID);

    payable(msg.sender).call{ value: assetAmount }("");
  }

  function rateAssetToSlisBNB() external view virtual override returns (uint256) {
    return _rateBNBToSlisBNB();
  }

  function rateSlisBNBToAssetInstant() external view virtual override returns (uint256) {
    revert("Not implemented");
  }

  function rateSlisBNBToAssetRequest() external view virtual override returns (uint256) {
    return _rateSlisBNBToBNB();
  }

  function rateBNBToAsset() public view virtual override returns (uint256) {
    return 1e18;
  }
}
