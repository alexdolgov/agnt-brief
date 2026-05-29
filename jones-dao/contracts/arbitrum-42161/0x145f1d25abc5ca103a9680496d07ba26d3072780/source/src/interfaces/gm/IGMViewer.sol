// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

interface IGMViewer {
    function router() external view returns (IGMRouter);
    function vault() external view returns (IjGMIndex);
    function strategy() external view returns (IGMStrategy);

    function getPreviewDeposit(uint256 _usdc, uint256 _usdTotalValue) external view returns (uint256);
    function getPreviewWithdraw(bytes calldata _data) external view returns (uint256);
    function getTotalSupply() external view returns (uint256);
    function getTotalValue() external view returns (uint256);
    function getDataValue(bytes calldata _data, bool deposit) external view returns (uint256);
    function getGMWeight(address _gmToken) external view returns (uint256);
    function getGMTokens() external view returns (IGMStrategy.GMToken[] memory);
    function getGMToken(address marketToken) external view returns (IGMStrategy.GMToken memory);
    function GMPrice(IAggregatorV3 oracle, uint256 stalePeriod) external view returns (uint256);
    function getUSDCOut(IGMStrategy.GMData memory data) external view returns (uint256);
    function oracles(address _indexToken) external view returns (IAggregatorV3);
    function gmxFee() external view returns (uint256);
    function getOperationData(bytes32 key) external view returns (uint8, address, uint256, uint256, uint256);

    error InvalidPrice();
    error SequencerDown();
    error StalePriceUpdate();
    error OngoingOperation();
}
