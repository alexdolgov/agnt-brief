// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Ownable } from "@openzeppelin-contracts-5.1.0/access/Ownable.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin-contracts-5.1.0/interfaces/IERC4626.sol";
import { SafeTransferLib } from "solady/src/utils/SafeTransferLib.sol";
import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";

import { yPaw } from "./yPaw.sol";
import { IErrors } from "../core/interfaces/IErrors.sol";

/**
 * @title yPAW Refund Contract
 * @notice Allows yPAW holders to refund their tokens for pBERA.
 * @dev The multisig transfers its stpBERA to this contract, owner calls initialize() to snapshot
 *      the total stpBERA and eligible yPAW supply. Users then call refund() to burn yPAW and
 *      receive proportional pBERA (stpBERA is unwrapped at claim time). yPAW held by the multisig
 *      is excluded from the eligible supply so it does not dilute refunding users.
 */
contract yPawRefund is IErrors, Ownable {
    using Math for uint256;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* CONSTANTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    yPaw public immutable YPAW;
    IERC4626 public immutable STPBERA;
    address public immutable MULTISIG;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* STORAGE */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    uint256 public totalStpBeraForRefund;
    uint256 public eligibleYPawSupply;
    bool public initialized;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* EVENTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event Initialized(uint256 totalStpBera, uint256 eligibleSupply);
    event Refunded(address indexed user, uint256 ypawAmount, uint256 stpBeraAmount, uint256 pberaAmount);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ERRORS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error AlreadyInitialized();
    error NotInitialized();

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* CONSTRUCTOR */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    constructor(address _ypaw, address _stpBera, address _multisig, address _owner) Ownable(_owner) {
        YPAW = yPaw(_ypaw);
        STPBERA = IERC4626(_stpBera);
        MULTISIG = _multisig;
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Snapshot the total stpBERA and eligible yPAW supply.
    /// @dev Must be called after stpBERA has been transferred to this contract.
    ///      The multisig's yPAW balance is excluded from the eligible supply.
    function initialize() external onlyOwner {
        require(!initialized, AlreadyInitialized());

        uint256 stpBeraBalance = IERC20(address(STPBERA)).balanceOf(address(this));
        require(stpBeraBalance > 0, ZeroAmount());

        totalStpBeraForRefund = stpBeraBalance;
        eligibleYPawSupply = YPAW.totalSupply() - YPAW.balanceOf(MULTISIG);
        require(eligibleYPawSupply > 0, ZeroAmount());

        initialized = true;
        emit Initialized(totalStpBeraForRefund, eligibleYPawSupply);
    }

    /// @notice Recover any ERC20 tokens sent to this contract.
    function recoverERC20(address token, address to, uint256 amount) external onlyOwner {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Burn yPAW and receive proportional pBERA by unwrapping stpBERA.
    /// @param ypawAmount Amount of yPAW to refund.
    function refund(uint256 ypawAmount) external {
        require(initialized, NotInitialized());
        require(ypawAmount > 0, ZeroAmount());

        uint256 stpBeraShares = ypawAmount.mulDiv(totalStpBeraForRefund, eligibleYPawSupply);

        YPAW.burn(msg.sender, ypawAmount);

        uint256 pberaAmount = STPBERA.redeem(stpBeraShares, msg.sender, address(this));
        emit Refunded(msg.sender, ypawAmount, stpBeraShares, pberaAmount);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* VIEW FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Preview the stpBERA shares and pBERA amount for a given yPAW refund.
    /// @param ypawAmount Amount of yPAW to refund.
    /// @return stpBeraShares Amount of stpBERA shares that would be redeemed.
    /// @return pberaAmount Amount of pBERA the user would receive.
    function previewRefund(uint256 ypawAmount) public view returns (uint256 stpBeraShares, uint256 pberaAmount) {
        stpBeraShares = ypawAmount.mulDiv(totalStpBeraForRefund, eligibleYPawSupply);
        pberaAmount = STPBERA.previewRedeem(stpBeraShares);
    }
}
