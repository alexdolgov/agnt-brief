// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";

import "@interfaces/IConcentrator.sol";
import "@interfaces/ICustodian.sol";
import "@interfaces/IFeeManager.sol";

/**
* @title Generalized Hourglass Mature Holdings Vault to hold the deposit token.
* @notice Holds assets that were locked & have matured until user's claim them.
* @dev This contract is owned by the Custodian and can only be called by it.
* @author Hourglass Finance (previously Pitch Foundation) with ZrowGz
*/

contract GeneralMatureHoldingVault {
    using SafeERC20 for IERC20;

    /// @notice The token that is deposited into this vault
    address public constant DEPOSIT_TOKEN = address(0xf43211935C781D5ca1a41d2041F397B8A7366C7A);

    /// @notice The address that receives the excess yields from the vault
    address public immutable FEE_MANAGER;
    /// @notice Address of the owner
    address private _owner;
    
    /// @notice Local tracking of balances
    uint256 public depositedAmount;


    constructor(address _custodian, address _feeManager) { 
        FEE_MANAGER = _feeManager;
        _owner = _custodian;

    }

    /// @notice Change the yield receiver address
    /// @param data Bytes containing the new yield receiver address, abi encoded
    /// @return bytes The new yield receiver address, abi encoded
    function setVars(bytes calldata data) external onlyOwner returns (bytes memory) {
        return ("");
    }

    /// @notice Claims rewards in the normal mature holding vault, but does nothing here
    function claimRewards() external {
        // do nothing
    }

    /// @notice Get the amount of underlying held by the vault
    /// @return uint256 The amount of underlying held by the vault
    function getTotalHoldings() external view returns (uint256) {
        return depositedAmount;
    }

    /// @notice Deposits a specified amount of underlying assets into the target strategy address
    /// @dev Assets must be transferred into here first
    /// @param amount The amount of underlying assets to deposit
    function depositMatured(uint256 amount) external onlyOwner {
        depositedAmount += amount;
    }

    /// @notice Withdraws a specified amount of underlying assets from the concentrator vault
    /// @param _amount The amount of underlying assets to withdraw
    /// @param _recipient The address to send the withdrawn assets to (the user's address)
    function withdrawMatured(
        uint256 _amount, 
        address _recipient
    ) external onlyOwner {
        depositedAmount -= _amount;
        IERC20(DEPOSIT_TOKEN).safeTransfer(_recipient, _amount);
    }

    /// @notice Allows transferring assets directly from one mature vault to another by the custodian/owner
    /// @param _newMatureVault The address of the new mature vault to send assets to
    function transferAssets(address _newMatureVault) external onlyOwner {
        // transfer all assets to new vault
        IERC20(DEPOSIT_TOKEN).safeTransfer(_newMatureVault, IERC20(DEPOSIT_TOKEN).balanceOf(address(this)));
    }

    /// @notice Recovers a token sent to this address by mistake
    /// @param _token The address of the token to recover
    /// @param _amount The amount of the token to recover
    function rescue(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).transfer(owner(), _amount);
    }

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view {
        require(owner() == _msgSender(), "!owner");
    }

    function _msgSender() internal view returns (address) {
        return msg.sender;
    }
    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "!adr(0)");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }

    event RewardsClaimed(uint256 _amount, address _receiver);
    event YieldReceiverChanged(address indexed _oldYieldReceiver, address indexed _newYieldReceiver);
}