// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

interface IUpkeepTreasury {
    function userBalance(address owner) external view returns (uint256);

    function useFunds(uint256 _amount, address _user) external;
}

contract UpkeepTreasury is Ownable, ReentrancyGuard, IUpkeepTreasury {
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(address => uint256) public userBalance;
    EnumerableSet.AddressSet internal _whitelistedServices;
    address payable public immutable keeperRegistry;

    event FundsDeposited(address indexed sender, uint256 indexed amount);
    event FundsWithdrawn(address indexed receiver, address indexed initiator, uint256 amount);

    modifier onlyWhitelistedServices() {
        require(
            _whitelistedServices.contains(msg.sender),
            "UpkeepTreasury: onlyWhitelistedServices"
        );
        _;
    }

    constructor(address payable _keeperRegistry) {
        keeperRegistry = _keeperRegistry;
        _whitelistedServices.add(_keeperRegistry);
    }

    // solhint-disable max-line-length
    /// @notice Function to deposit Funds which will be used to execute transactions on various services
    /// @param _receiver Address receiving the credits
    function depositFunds(address _receiver) public payable nonReentrant {
        uint256 depositAmount = msg.value;
        userBalance[_receiver] = userBalance[_receiver] + depositAmount;
        emit FundsDeposited(_receiver, depositAmount);
    }

    receive() external payable {
        depositFunds(msg.sender);
    }

    /// @notice Function to withdraw Funds back to the _receiver
    /// @param _receiver Address receiving the credits
    /// @param _amount Amount to be credited
    function withdrawFunds(address payable _receiver, uint256 _amount) external nonReentrant {
        uint256 balance = userBalance[msg.sender];

        uint256 withdrawAmount = Math.min(balance, _amount);

        userBalance[msg.sender] = balance - withdrawAmount;

        _transfer(_receiver, withdrawAmount);

        emit FundsWithdrawn(_receiver, msg.sender, withdrawAmount);
    }

    /// @notice Function called by whitelisted services to handle payments"
    /// @param _amount Amount to be deducted
    /// @param _user Address of user whose balance will be deducted
    function useFunds(uint256 _amount, address _user) external onlyWhitelistedServices {
        userBalance[_user] = userBalance[_user] - _amount;

        _transfer(keeperRegistry, _amount);
    }

    // solhint-disable private-vars-leading-underscore
    // solhint-disable func-visibility
    function _transfer(address payable _to, uint256 _amount) private {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "_transfer: ETH transfer failed");
    }

    // Governance functions

    /// @notice Add new service that can call useFunds.
    /// @param _service New service to add
    function addWhitelistedService(address _service) external onlyOwner {
        require(
            !_whitelistedServices.contains(_service),
            "UpkeepTreasury: addWhitelistedService: whitelisted"
        );
        _whitelistedServices.add(_service);
    }

    /// @notice Remove old service that can call useFunds.
    /// @param _service Old service to remove
    function removeWhitelistedService(address _service) external onlyOwner {
        require(
            _whitelistedServices.contains(_service),
            "UpkeepTreasury: addWhitelistedService: !whitelisted"
        );
        _whitelistedServices.remove(_service);
    }

    // View Funcs

    function getWhitelistedServices() external view returns (address[] memory) {
        uint256 length = _whitelistedServices.length();
        address[] memory whitelistedServices = new address[](length);

        for (uint256 i; i < length; i++) {
            whitelistedServices[i] = _whitelistedServices.at(i);
        }
        return whitelistedServices;
    }
}
