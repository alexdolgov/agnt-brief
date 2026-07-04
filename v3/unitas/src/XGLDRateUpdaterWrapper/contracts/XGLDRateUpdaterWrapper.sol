// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IXGLDExchangeRate } from "./interfaces/IXGLDExchangeRate.sol";

/// @notice Rate update gate that enforces an 8 hour cooldown around XGLDExchangeRate updates.
contract XGLDRateUpdaterWrapper is Ownable {
    IXGLDExchangeRate public immutable exchangeRate;
    uint256 public constant MIN_UPDATE_INTERVAL = 8 hours;

    uint256 public lastUpdateTimestamp;
    bool public hasUpdated;
    address public operator;

    event OperatorUpdated(address indexed oldOperator, address indexed newOperator);
    event RateUpdateForwarded(address indexed operator, uint256 newRate, uint256 updatedAt);

    error ZeroAddress();
    error NotOperator();
    error CooldownNotElapsed(uint256 nextUpdateAt, uint256 currentTime);
    error RenounceDisabled();

    constructor(IXGLDExchangeRate _exchangeRate, address _operator, address _admin) Ownable(_requireNonZero(_admin)) {
        if (address(_exchangeRate) == address(0) || _operator == address(0)) {
            revert ZeroAddress();
        }

        exchangeRate = _exchangeRate;
        operator = _operator;
        lastUpdateTimestamp = _exchangeRate.lastUpdatedAt();
        hasUpdated = lastUpdateTimestamp != 0;

        emit OperatorUpdated(address(0), _operator);
    }

    function _requireNonZero(address account) private pure returns (address) {
        if (account == address(0)) revert ZeroAddress();
        return account;
    }

    modifier onlyOperator() {
        if (msg.sender != operator) revert NotOperator();
        _;
    }

    function admin() external view returns (address) {
        return owner();
    }

    function setOperator(address newOperator) external onlyOwner {
        if (newOperator == address(0)) revert ZeroAddress();

        address oldOperator = operator;
        operator = newOperator;

        emit OperatorUpdated(oldOperator, newOperator);
    }

    function renounceOwnership() public view override onlyOwner {
        revert RenounceDisabled();
    }

    function updateRate(uint256 newRate) external onlyOperator {
        uint256 nextUpdateAt = lastUpdateTimestamp + MIN_UPDATE_INTERVAL;
        if (hasUpdated && block.timestamp < nextUpdateAt) {
            revert CooldownNotElapsed(nextUpdateAt, block.timestamp);
        }

        // Set the cooldown before the external call. If the call reverts, these writes roll back with the transaction.
        hasUpdated = true;
        lastUpdateTimestamp = block.timestamp;
        exchangeRate.setExchangeRate(newRate);

        emit RateUpdateForwarded(msg.sender, newRate, block.timestamp);
    }
}
