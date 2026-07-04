// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../contracts/Streamer.sol";
import "../contracts/interfaces/IStreamer.sol";
import "../contracts/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC1363.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC165.sol";
import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

contract $Streamer is Streamer {
    bytes32 public constant __hh_exposed_bytecode_marker = "hardhat-exposed";

    constructor(IERC20 _streamingAsset, AggregatorV3Interface _streamingAssetOracle, AggregatorV3Interface _nativeAssetOracle, address _returnAddress, address _streamCreator, address _recipient, uint8 _streamingAssetDecimals, uint8 _nativeAssetDecimals, uint256 _nativeAssetStreamingAmount, uint256 _slippage, uint256 _claimCooldown, uint256 _sweepCooldown, uint256 _streamDuration, uint256 _minimumNoticePeriod) Streamer(_streamingAsset, _streamingAssetOracle, _nativeAssetOracle, _returnAddress, _streamCreator, _recipient, _streamingAssetDecimals, _nativeAssetDecimals, _nativeAssetStreamingAmount, _slippage, _claimCooldown, _sweepCooldown, _streamDuration, _minimumNoticePeriod) payable {
    }

    function $onlyStreamCreator() external payable onlyStreamCreator() {}

    function $scaleAmount(uint256 amount,uint256 fromDecimals,uint256 toDecimals) external pure returns (uint256 ret0) {
        (ret0) = super.scaleAmount(amount,fromDecimals,toDecimals);
    }

    receive() external payable {}
}
