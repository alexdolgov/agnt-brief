//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import "@interfaces/ICustodian.sol";
import "@interfaces/IProxyVault.sol";

contract ERC20Intermediary {
    using SafeERC20 for IERC20;

    address internal _owner;

    constructor(address _custodian) {
        _owner = _custodian;
    }

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

    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function transferOwnership(address newOwner) external onlyOwner {
        _owner = newOwner;
    }

    /// @notice Called by custodian to send user funds into vault
    /// @dev Used when vault already exists, reducing ERC20 transfers
    function pullFundsFromUserToVault(
        address user, 
        address vault,
        address token, 
        uint256 amount, 
        bytes calldata
    ) external onlyOwner {         
        IERC20(token).safeTransferFrom(user, vault, amount);
    }
}