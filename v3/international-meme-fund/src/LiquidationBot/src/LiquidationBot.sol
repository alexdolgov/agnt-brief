// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20} from "./interfaces/IERC20.sol";
import {SafeTransferLib} from "./libraries/SafeTransferLib.sol";

import {ErrorsLib} from "morpho-blue/src/libraries/ErrorsLib.sol";

import {MarketParams, Id, IMorpho} from "morpho-blue/src/interfaces/IMorpho.sol";
import {IMorphoLiquidateCallback} from "morpho-blue/src/interfaces/IMorphoCallbacks.sol";

contract LiquidationBot is IMorphoLiquidateCallback {
    struct LiquidateData {
        address collateralToken;
        address loanToken;
        uint256 seized;
        address swapper;
        bytes swapData;
    }
    
    address public owner;
    mapping(address => bool) public authorized;
    address public immutable morphoMarkets;

    constructor(address _morphoMarkets) payable {
        owner = msg.sender;
        morphoMarkets = _morphoMarkets;
    }

    receive() external payable {}

    modifier onlyOwner() {
        require(msg.sender == owner, ErrorsLib.NOT_OWNER);
        _;
    }

    modifier onlyMorphoMarkets() {
        require(msg.sender == address(morphoMarkets), ErrorsLib.UNAUTHORIZED);
        _;
    }

    modifier onlyAuthorized() {
        require(msg.sender == owner || authorized[msg.sender], ErrorsLib.NOT_OWNER);
        _;
    }

    function setOwner(address newOwner) external onlyOwner {
        require(newOwner != owner, ErrorsLib.ALREADY_SET);
        owner = newOwner;
    }

    function setAuthorized(address liquidator, bool setting) external onlyOwner {
        require(liquidator != address(0), ErrorsLib.ZERO_ADDRESS);
        authorized[liquidator] = setting;
    }

    function withdrawERC20(address token, uint256 amount) external onlyOwner {
        SafeTransferLib.safeTransfer(IERC20(token), msg.sender, amount);
    }

    function liquidate(Id id, address borrower, uint256 seizedAssets, address pair, bytes calldata swapData) external payable onlyAuthorized {
        MarketParams memory params = IMorpho(morphoMarkets).idToMarketParams(id);
        IMorpho(morphoMarkets).liquidate(
            params,
            borrower,
            seizedAssets,
            0,
            abi.encode(
                LiquidateData(
                    params.collateralToken,
                    params.loanToken,
                    seizedAssets,
                    pair,
                    swapData
                )
            )
        );
    }

    function onMorphoLiquidate(uint256 repaidAssets, bytes calldata data) external onlyMorphoMarkets {
        LiquidateData memory ldata = abi.decode(data, (LiquidateData));
        IERC20 collateralToken = IERC20(ldata.collateralToken);
        IERC20 loanToken = IERC20(ldata.loanToken);
        collateralToken.approve(ldata.swapper, ldata.seized);
        (bool success,) = ldata.swapper.call(ldata.swapData);
        if (!success) revert ("swap error");
        loanToken.approve(morphoMarkets, repaidAssets);
    }
}
