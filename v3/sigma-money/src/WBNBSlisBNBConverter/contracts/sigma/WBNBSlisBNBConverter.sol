// SPDX-License-Identifier: UNLICENSEDAdd commentMore actions
pragma solidity ^0.8.26;

import "./SlisBNBConverter.sol";
import "../interfaces/sigma/IWETH.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract WBNBSlisBNBConverter is SlisBNBConverter {
  using SafeERC20 for IERC20;

  constructor(
    address _slisBNB,
    address _asset,
    address _listaStakeManager
  ) SlisBNBConverter(_slisBNB, _asset, _listaStakeManager) {}

  function convertAssetToSlisBNB(uint256 amount) external payable virtual override returns (uint256 amountOfSlisBNB) {
    // convert WBNB to BNB
    IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
    IWETH(asset).withdraw(amount);

    // convert BNB to slisBNB
    amountOfSlisBNB = _convertBNBToSlisBNB(amount);

    // transfer slisBNB to the caller
    IERC20(slisBNB).safeTransfer(msg.sender, amountOfSlisBNB);
  }

  function convertSlisBNBToAssetInstant(uint256 amount) external virtual override returns (uint256 amountOfAsset) {
    revert("Not implemented");

    // // convert BNB to WBNB
    // IWETH(asset).deposit{ value: amountOfAsset }();

    // // transfer WBNB to the caller
    // IERC20(asset).safeTransfer(msg.sender, amountOfAsset);
  }

  function convertSlisBNBToAssetRequest(
    address user,
    uint256 amount
  ) external virtual override returns (uint256 requestUUID) {
    // convert slisBNB to BNB
    IERC20(slisBNB).safeTransferFrom(msg.sender, address(this), amount);
    requestUUID = _convertSlisBNBToBNB(user, amount);
  }

  function claimRequest(address user, uint256 requestUUID) external virtual override returns (uint256 assetAmount) {
    assetAmount = _withdrawRequest(user, requestUUID);

    // convert BNB to wBNB
    IWETH(asset).deposit{ value: assetAmount }();

    // transfer wBNB to the caller
    IERC20(asset).safeTransfer(msg.sender, assetAmount);
  }

  function rateAssetToSlisBNB() external view virtual override returns (uint256 rate) {
    return _rateBNBToSlisBNB();
  }

  function rateSlisBNBToAssetInstant() external view virtual override returns (uint256 rate) {
    revert("Not implemented");
  }

  function rateSlisBNBToAssetRequest() external view virtual override returns (uint256 rate) {
    return _rateSlisBNBToBNB();
  }

  function rateBNBToAsset() public view virtual override returns (uint256 rate) {
    return 1e18;
  }
}
