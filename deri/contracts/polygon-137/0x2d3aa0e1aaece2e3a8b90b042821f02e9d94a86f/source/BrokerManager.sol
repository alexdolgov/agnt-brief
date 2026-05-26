// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract BrokerManager {

    event SetBroker(address indexed account, address indexed broker);

    mapping (address => address) _brokers;

    function getBroker(address account) external view returns (address) {
        return _brokers[account];
    }

    function setBroker(address broker) external {
        address account = msg.sender;
        require(broker != address(0), 'BrokerManager: set to 0 address');
        require(account != broker, 'BrokerManager: cannot set yourself as broker');
        require(_brokers[account] == address(0), 'BrokerManager: can only set once');

        _brokers[account] = broker;
        emit SetBroker(account, broker);
    }

}