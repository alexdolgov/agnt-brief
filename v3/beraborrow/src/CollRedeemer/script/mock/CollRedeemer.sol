// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SwappersLib} from "src/libraries/SwappersLib.sol";
import {IDebtToken} from "src/interfaces/core/IDebtToken.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";
import {IPositionManager} from "src/interfaces/core/IPositionManager.sol";
import {MultiCollateralHintHelpers} from "src/core/helpers/MultiCollateralHintHelpers.sol";

contract CollRedeemer {
    using SwappersLib for SwappersLib.SwapperData;

    bytes32 private constant _RETURN_VALUE = keccak256("ERC3156FlashBorrower.onFlashLoan");

    address owner;
    address admin;
    SwappersLib.SwapperData private swapperData;
    IDebtToken private debtToken;
    MultiCollateralHintHelpers private hintHelpers;

    error NotDebtToken(address sender);

    modifier nonReentrant() {
        ReentrancyGuardLib._guard();
        _;
        ReentrancyGuardLib._unlockGuard();
    }

    modifier onlyThis() {
        // Only callable if inside a nonReentrant lock
        ReentrancyGuardLib._internalGuard();
        _;
    }

    constructor(address router, address _admin) {
        owner = msg.sender;
        admin = _admin;
        swapperData.addWhitelistedSwapper(router, true);
    }

    function redeemColl(uint256 nectAmount, address swapRouter, bytes memory dexCalldata) external nonReentrant {
        require(msg.sender == owner, "CollRedeemer: only owner");

        debtToken.flashLoan(
            IERC3156FlashBorrower(address(this)),
            address(debtToken),
            nectAmount,
            abi.encode(swapRouter, dexCalldata)
        );

        uint256 balance = debtToken.balanceOf(address(this));
        debtToken.transfer(msg.sender, balance);
    }

    function onFlashLoan(address initiator, address, /*token*/ uint256 amount, uint256, /*fee*/ bytes calldata data)
        external
        onlyThis
        returns (bytes32)
    {
        if (msg.sender != address(debtToken) || initiator != address(this)) revert NotDebtToken(msg.sender);

        (IPositionManager positionManager, uint256 debtAmount, address swapRouter, bytes memory dexCalldata) = abi.decode(data, (IPositionManager, uint256, address, bytes));

        positionManager.redeemCollateral({
            _debtAmount: debtAmount,
            _firstRedemptionHint: address(0),
            _upperPartialRedemptionHint: address(0),
            _lowerPartialRedemptionHint: address(0),
            _partialRedemptionHintNICR: 0,
            _maxIterations: type(uint256).max,
            _maxFeePercentage: 1e16 // 1%
        });

        swapperData.executeSwap(swapRouter, dexCalldata);

        debtToken.approve(msg.sender, amount);

        return _RETURN_VALUE;
    }

    function addWhitelistedSwapper(address _swapRouter, bool status) external {
        require(msg.sender == owner, "CollRedeemer: only admin");

        swapperData.addWhitelistedSwapper(_swapRouter, status);
    }

    function setOwner(address newOwner) external {
        require(msg.sender == owner || msg.sender == admin, "CollRedeemer: only owner");
        owner = newOwner;
    }

    function claimLockedTokens(
        address[] calldata tokens,
        address receiver
    ) external {
        require(msg.sender == owner, "CollRedeemer: only owner");
        require(receiver != address(0));

        for (uint256 i; i < tokens.length; ++i) {
            address token = tokens[i];
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance > 0) {
                IERC20(token).transfer(receiver, balance);
            }
        }
    }
}