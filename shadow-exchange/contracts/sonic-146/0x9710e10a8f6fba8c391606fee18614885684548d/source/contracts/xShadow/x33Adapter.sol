// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import {IAccessHub} from "../interfaces/IAccessHub.sol";

import {IVoter} from "../interfaces/IVoter.sol";
import {IXShadow} from "../interfaces/IXShadow.sol";
import {IVoteModule} from "../interfaces/IVoteModule.sol";
import {IX33} from "../interfaces/IX33.sol";
import {Ix33Adapter} from "../interfaces/Ix33Adapter.sol";
import {Errors} from "contracts/libraries/Errors.sol";

/// @title Adapter for x33 to be able to vote on the new Voter
/// @dev this will become the new Operator for x33
contract x33Adapter is Ix33Adapter, ReentrancyGuard {
    IVoter public immutable voter;
    IX33 public immutable x33;
    IXShadow public immutable xShadow;
    address public immutable accessHub;

    address public operator;

    modifier onlyOperator() {
        require(msg.sender == operator, Errors.NOT_AUTHORIZED(msg.sender));
        _;
    }

    modifier onlyAccessHub() {
        require(msg.sender == voter.accessHub(), Errors.NOT_ACCESSHUB());
        _;
    }

    modifier update(address user) {
        IAccessHub(accessHub).preX33UpdateHook(user);
        _;
        IAccessHub(accessHub).postX33UpdateHook();
    }

    constructor(address _x33, address _voter) {
        operator = msg.sender;
        x33 = IX33(_x33);
        xShadow = IXShadow(IX33(_x33).xShadow());
        voter = IVoter(_voter);
        accessHub = IVoter(_voter).accessHub();
    }

    /// @inheritdoc Ix33Adapter
    function submitVotes(address[] calldata _pools, uint256[] calldata _weights) external onlyOperator {
        /// @dev cast vote on behalf of x33
        IX33.AggregatorParams memory _params = IX33.AggregatorParams({
            aggregator: address(voter),
            tokenIn: address(this),
            amountIn: 0,
            minAmountOut: 0,
            callData: abi.encodeWithSelector(IVoter.vote.selector, address(x33), _pools, _weights)
        });

        x33.swapIncentiveViaAggregator(_params);
    }

    /// @inheritdoc Ix33Adapter
    function compound() external onlyOperator {
        x33.compound();
    }

    /// @inheritdoc Ix33Adapter
    function claimRebase() external onlyOperator {
        x33.claimRebase();
    }

    /// @inheritdoc Ix33Adapter
    function rebaseX33() external onlyOperator {
        IAccessHub(x33.accessHub()).rebaseX33();
    }

    /// @inheritdoc Ix33Adapter
    function claimIncentives(address[] calldata _feeDistributors, address[][] calldata _tokens) external onlyOperator {
        x33.claimIncentives(_feeDistributors, _tokens);
    }

    /// @inheritdoc Ix33Adapter
    function swapIncentiveViaAggregator(IX33.AggregatorParams calldata _params) external nonReentrant onlyOperator {
        x33.swapIncentiveViaAggregator(_params);
    }

    /// @inheritdoc Ix33Adapter
    function unlock() external onlyOperator {
        x33.unlock();
    }

    /// @inheritdoc Ix33Adapter
    function transferOperator(address _newOperator) external onlyAccessHub {
        address currentOperator = operator;

        /// @dev set the new operator
        operator = _newOperator;

        emit NewOperator(currentOperator, operator);
    }

    /// @inheritdoc Ix33Adapter
    function rescue(address token) external onlyAccessHub {
        IERC20(token).transfer(msg.sender, IERC20(token).balanceOf(address(this)));
    }

    /// @dev does nothing, just so x33 can call approve when voting
    function approve(address, uint256) external pure returns (bool) {
        return true;
    }

    //////////////////////////
    /// IERC4626 Functions ///
    //////////////////////////

    // @TODO tests
    function deposit(uint256 assets, address receiver) external update(msg.sender) returns (uint256 shares) {
        // transfer xShadow to here before depositing for the user
        xShadow.transferFrom(msg.sender, address(this), assets);

        // approve xShadow to x33
        xShadow.approve(address(x33), assets);

        // deposit to x33 and send to receiver
        return IERC4626(address(x33)).deposit(assets, receiver);
    }

    function mint(uint256 shares, address receiver) external update(msg.sender) returns (uint256 assets) {
        // convert shares to assets to get the amount of xShadow needed, need to round up
        assets = IERC4626(address(x33)).convertToAssets(shares) + 1;

        // transfer xShadow to here before depositing for the user
        xShadow.transferFrom(msg.sender, address(this), assets);

        // approve xShadow to x33
        xShadow.approve(address(x33), assets);

        // deposit to x33 and send to receiver
        return IERC4626(address(x33)).mint(shares, receiver);
    }

    /// @dev this isn't exactly compilant with ERC4626 because we can't maniulate approvals on x33 through here
    /// so we do not allow withdrawing from another user other than the msg.sender
    function withdraw(uint256 assets, address receiver) external update(msg.sender) returns (uint256 shares) {
        return IERC4626(address(x33)).withdraw(assets, receiver, msg.sender);
    }

    /// @dev this isn't exactly compilant with ERC4626 because we can't maniulate approvals on x33 through here
    /// so we do not allow withdrawing from another user other than the msg.sender
    function redeem(uint256 shares, address receiver) external update(msg.sender) returns (uint256 assets) {
        return IERC4626(address(x33)).redeem(shares, receiver, msg.sender);
    }
}
