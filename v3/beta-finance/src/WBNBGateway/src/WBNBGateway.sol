// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "openzeppelin-upgradeable/contracts/proxy/utils/Initializable.sol";

import "./interfaces/IOmniToken.sol";
import "./interfaces/IWBNB.sol";
import "./interfaces/IWithUnderlying.sol";
import "./SubAccount.sol";

/**
 * @title WBNBGateway
 * @notice Handles native BNB deposits directly to contract through WBNB, but does not handle native BNB withdrawals.
 * @dev This contract serves as a gateway for handling deposits of native BNB, which are then wrapped into WBNB tokens.
 */
contract WBNBGateway is Initializable {
    using SubAccount for address;

    address public owbnb;
    address public wbnb;
    uint96 private constant SUBACCOUNT_ID = 0;

    event Deposit(bytes32 indexed account, uint8 indexed trancheId, uint256 amount, uint256 share);

    /**
     * @notice Initializes the contract with the oWBNB contract address.
     * @param _owbnb The address of the owbnb contract.
     */
    function initialize(address _owbnb) external initializer {
        address _wbnb = IWithUnderlying(_owbnb).underlying();
        IWBNB(_wbnb).approve(_owbnb, type(uint256).max);
        owbnb = _owbnb;
        wbnb = _wbnb;
    }

    /**
     * @notice Deposits native BNB to the contract, wraps it into wbnb tokens, and handles the deposit operation
     * through the Omni Token contract.
     * @dev The function is payable to accept BNB deposits.
     * @param _subId The subscription ID related to the depositor's account.
     * @param _trancheId The identifier of the tranche where the deposit is occurring.
     * @return share The number of shares received in exchange for the deposited BNB.
     */
    function deposit(uint96 _subId, uint8 _trancheId) external payable returns (uint256 share) {
        bytes32 to = msg.sender.toAccount(_subId);
        IWBNB(wbnb).deposit{value: msg.value}();
        share = IOmniToken(owbnb).deposit(SUBACCOUNT_ID, _trancheId, msg.value);
        IOmniToken(owbnb).transfer(SUBACCOUNT_ID, to, _trancheId, share);
        emit Deposit(to, _trancheId, msg.value, share);
    }

    /**
     * @notice Fallback function that reverts if BNB is sent directly to the contract.
     * @dev Any attempts to send BNB directly to the contract will cause a transaction revert.
     */
    receive() external payable {
        revert("This contract should not accept BNB directly.");
    }
}
