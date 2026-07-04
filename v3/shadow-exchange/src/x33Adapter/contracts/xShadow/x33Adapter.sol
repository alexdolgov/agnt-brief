// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

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

    address public operator;

    modifier onlyOperator() {
        require(msg.sender == operator, Errors.NOT_AUTHORIZED(msg.sender));
        _;
    }

    modifier onlyAccessHub() {
        require(msg.sender == voter.accessHub(), Errors.NOT_ACCESSHUB());
        _;
    }

    constructor(address _x33, address _voter) {
        operator = msg.sender;
        x33 = IX33(_x33);
        voter = IVoter(_voter);
    }

    function accessHub() external view returns (address) {
        return voter.accessHub();
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

    /// @dev does nothing, just so x33 can call approve when voting
    function approve(address, uint256) external pure returns (bool) {
        return true;
    }
}
