// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ERC20Wrapper, ERC20, IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Wrapper.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

/**
 * @title SPollen
 * @author Beraborrow
 * @notice Receives POLLEN as underlying for access to Beraborrow's sPOLLEN compounding and vote escrow reward distribution
 */
contract SPollen is ERC20Wrapper {
    using SafeERC20 for IERC20;

    /// @notice Instance of MetaBorrowCore for permissioned recovery.
    IMetaBeraborrowCore public immutable metaBeraborrowCore;

    /// @notice Event emitted when POLLEN is deposited.
    event SPollenWrap(address indexed account, uint256 amount);
    /// @notice Event emitted when POLLEN is withdrawn.
    event SPollenUnwrap(address indexed account, uint256 amount);

    /// @notice Error emitted on an address(0) input.
    error ZeroAddress();
    /// @notice Error emitted when caller is not the owner.
    error OnlyOwner(address caller);

    /**
     * @notice Initializes a new SPollen contract.
     * @param _metaBeraborrowCore Address of the MetaBeraborrowCore contract.
     * @param _pollen POLLEN token.
     */
    constructor(
        address _metaBeraborrowCore,
        IERC20 _pollen
    ) ERC20Wrapper(_pollen) ERC20("sPOLLEN Token", "sPOLLEN") {
        if (_metaBeraborrowCore == address(0) || address(_pollen) == address(0))
            revert ZeroAddress();

        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
    }

    /**
     * @notice Deposits POLLEN into the contract and mints sPOLLEN.
     * @param account Address of the account to deposit POLLEN for.
     * @param amount Amount of POLLEN to deposit.
     * @return True if the deposit is successful.
     */
    function depositFor(
        address account,
        uint256 amount
    ) public override returns (bool) {
        SafeERC20.safeTransferFrom(
            underlying,
            msg.sender,
            address(this),
            amount
        );
        _mint(account, amount);

        // Emit the deposit event
        emit SPollenWrap(account, amount);

        return true;
    }

    /**
     * @notice Withdraws POLLEN from the contract and burns sPOLLEN.
     * @param account Address of the account to withdraw POLLEN for.
     * @param amount Amount of POLLEN to withdraw.
     * @return True if the withdrawal is successful.
     */
    function withdrawTo(
        address account,
        uint256 amount
    ) public override returns (bool) {
        _burn(msg.sender, amount);
        underlying.safeTransfer(account, amount);

        // Emit the withdraw event
        emit SPollenUnwrap(account, amount);

        return true;
    }

    /**
     * @notice Recovers POLLEN from the WrappedSPollen contract.
     * @param account Address of the account to recover POLLEN for.
     * @return Amount of POLLEN recovered.
     */
    function recover(address account) external returns (uint256) {
        if (msg.sender != metaBeraborrowCore.owner())
            revert OnlyOwner(msg.sender);
        if (account == address(0)) revert ZeroAddress();

        return _recover(account);
    }
}
