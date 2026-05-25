// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.24;

import "./utils/OwnableUpgradeable.sol";

interface IDataEmitter {
    error OnlyOracle();

    event DataReceived(bytes data);
    event OracleChanged(address admin, address oracle);

    function initialize(address access) external;

    function setOracle(address newOracle) external;

    function emitData(bytes calldata data) external;
}

contract DataEmitter is OwnableUpgradeable, IDataEmitter {
    address public oracle;

    /**
     * @notice Throw if caller have no access to function with selector `selector`.
     */
    modifier onlyOracle() {
        if (msg.sender != oracle) revert OnlyOracle();
        _;
    }

    function initialize(address oracle_) external virtual initializer {
        __Ownable_init();
        setOracle(oracle_);
    }

    function setOracle(address newOracle) public onlyOwner {
        oracle = newOracle;
        emit OracleChanged(msg.sender, newOracle);
    }

    function emitData(bytes calldata data) external onlyOracle {
        emit DataReceived(data);
    }
}
