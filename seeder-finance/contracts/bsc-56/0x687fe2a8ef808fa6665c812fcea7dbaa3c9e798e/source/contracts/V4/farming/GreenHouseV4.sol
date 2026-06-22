// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "../../V1/tokens/Tree.sol";
import "../../V3/utils/SafeMathV3.sol";
import "../../V3/farming/GreenHouseV3.sol";
import "./OracleClient.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";


contract GreenHouseV4 is GreenHouseV3, OracleClient {
    using SafeMath for uint256;
    using Counters for Counters.Counter;

    event BurnRequested(address indexed beneficiary, uint256 tree, uint256 burnRequestID);
    event BurnCompleted(address indexed beneficiary, uint256 tree, uint256 leaf, uint256 burnRequestID);
    event BurnRejected(address indexed beneficiary, uint256 tree, uint256 burnRequestID);
    event BurnCancelled(address indexed beneficiary, uint256 tree, uint256 burnRequestID);

    bool initialOracle;
    Counters.Counter public burnRequestCounter;
    mapping(address => uint256) public requesterToBurnRequestID;
    mapping(uint256 => address) private burnRequestIDToRequester;
    mapping(uint256 => uint256) private burnRequestIDToAmount;
    uint256 constant MINIMUM_GAS_PRICE = 2e15;

    /* ***********************************************************************************
    // ******************************* Init Function *************************************
    // ******************************************************************************** */

    function initialzeOracle(IOracle _oracle) external {
        require(initialOracle == false, "GreenHouse: oracle is already initialized");
        __randomOracle_init(_oracle);
        initialOracle = true;
    }

    /* ***********************************************************************************
    // ******************************* External Function *********************************
    // ******************************************************************************** */

    /// @notice request to convert back TREE token to LEAF, the process need help from oracle to perform holding peroid verify
    /// @dev only do validation for Tree balance and allowance if sufficient request will be created
    function burnRequest(uint256 burnAmount) external payable {
        require(MINIMUM_GAS_PRICE <= msg.value, "GreenHouse: gas price is insufficient");
        require(burnAmount > 0,"GreenHouse: burn request amount must more than zero");
        require(tree.balanceOf(msg.sender) >= burnAmount,"GreenHouse: tree balance is not sufficient");
        require(tree.allowance(msg.sender, address(this)) >= burnAmount,"GreenHouse: tree allowance is not sufficient");
        require(requesterToBurnRequestID[msg.sender] == 0,"GreenHouse: burn request still in progress");

        burnRequestCounter.increment();
        requesterToBurnRequestID[msg.sender] = burnRequestCounter.current();
        burnRequestIDToRequester[burnRequestCounter.current()] = msg.sender;
        burnRequestIDToAmount[burnRequestCounter.current()] = burnAmount;

        requestBurnTreeAvailable(
            burnRequestCounter.current(),
            msg.sender,
            msg.value
        );

        emit BurnRequested(msg.sender, burnAmount, burnRequestCounter.current());
    }

    function cancelBurnRequest() external {
        require(requesterToBurnRequestID[msg.sender] != 0,"GreenHouse: no request pending to cancel");
        refund(requesterToBurnRequestID[msg.sender]);
    }

    /* ***********************************************************************************
    // ******************************* Internal Function *********************************
    // ******************************************************************************** */

    /// @dev callback from oracle function, regardless of available burn tree is sufficient this process still finish the ticket
    function processBurnRequest(uint256 requestId, uint256 availbleBurnTree) internal override {
        address burnRequester = burnRequestIDToRequester[requestId];
        uint256 burnTreeAmount = burnRequestIDToAmount[requestId];
        require(burnRequester != address(0),"GreenHouse: burn request id not valid");
        require(burnTreeAmount > 0, "GreenHouse: burn request id not valid");

        if (availbleBurnTree >= burnTreeAmount) {
            uint256 convertBackLeaf = burnTreeAmount.mul(fertilizedTokenPerTree);
            tree.transferFrom(burnRequester, address(this), burnTreeAmount);
            tree.burn(burnTreeAmount);
            fertilizedToken.transfer( burnRequester, convertBackLeaf);
            emit BurnCompleted( burnRequester, burnTreeAmount, convertBackLeaf, requestId);

        } else {
            emit BurnRejected(burnRequester, burnTreeAmount, requestId);
        }

        delete burnRequestIDToRequester[requestId];
        delete burnRequestIDToAmount[requestId];
        delete requesterToBurnRequestID[burnRequester];
    }

    function processCancelBurnRequest(uint256 requestId, uint256 providedGas) internal override {
        address burnRequester = burnRequestIDToRequester[requestId];
        uint256 burnTreeAmount = burnRequestIDToAmount[requestId];
        require(burnRequester != address(0),"GreenHouse: burn request id not valid");
        require(burnTreeAmount > 0, "GreenHouse: burn request id not valid");

        if (providedGas > 0) {
            payable(burnRequester).transfer(providedGas);
        }

        delete burnRequestIDToRequester[requestId];
        delete burnRequestIDToAmount[requestId];
        delete requesterToBurnRequestID[burnRequester];

        emit BurnCancelled(burnRequester, burnTreeAmount, requestId);
    }

}