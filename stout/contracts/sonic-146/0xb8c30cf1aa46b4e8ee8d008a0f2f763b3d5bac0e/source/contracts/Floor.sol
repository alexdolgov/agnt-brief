// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IERC20TokenRebase} from "./interface/IERC20TokenRebase.sol";
import {IFloor} from "./interface/IFloor.sol";
import {IMiscHelper} from "./interface/IMiscHelper.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Floor
 * @dev Price floor mechanism for STTX token
 * @notice Manages DUSX deposits and refunds for stability
 */
contract Floor is Ownable, ReentrancyGuard, IFloor {
    /// @notice Protocol contracts
    IBaseContracts public immutable baseContracts;
    IMiscHelper public helper;
    bool public helperSet;
    IERC20Token public immutable dusx;
    IERC20TokenRebase public immutable sttx;
    /// @notice Total capital in DUSX
    uint256 public capital;
    /// @notice Events
    event HelperSet(IMiscHelper helper);
    event CapitalIncreased(uint256 amount);
    event CapitalDecreased(uint256 amount);
    event TokensRefunded(address indexed user, uint256 refundAmount);
    /// @notice Custom errors
    error HelperAlreadySet();
    error OnlyHelperCanCall();
    error InvalidRefundAmount();
    error InvalidBurnAmount();
    error TotalSupplyIsZero();
    error ZeroAddress();
    /// @notice Access control modifier
    modifier onlyHelper() {
        if (address(helper) != _msgSender()) {
            revert OnlyHelperCanCall();
        }
        _;
    }

    /**
     * @notice Initializes floor with base contracts
     * @param baseContracts_ BaseContracts instance for protocol integration
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        // Get core contracts from BaseContracts
        baseContracts = baseContracts_;
        dusx = baseContracts.dusx();
        sttx = baseContracts.sttx();
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(sttx));
    }

    /**
     * @notice Sets the helper contract
     */
    function setHelper() external onlyOwner {
        if (helperSet) revert HelperAlreadySet();
        helper = baseContracts.helper();
        _ensureNonzeroAddress(address(helper));
        helperSet = true;
        emit HelperSet(helper);
    }

    /**
     * @notice Deposits DUSX to increase floor capital
     * @param msgSender User address
     * @param amount Amount to deposit
     */
    function deposit(
        address msgSender,
        uint256 amount
    ) external nonReentrant onlyHelper {
        capital += amount;
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(dusx)),
            msgSender,
            address(this),
            amount
        );
        emit CapitalIncreased(amount);
    }

    /**
     * @notice Refunds DUSX by burning STTX
     * @param msgSender User address
     * @param burnAmount Amount of STTX to burn
     */
    function refund(
        address msgSender,
        uint256 burnAmount
    ) external nonReentrant onlyHelper {
        uint256 refundAmount = getRefundAmount(burnAmount);
        if (refundAmount == 0 || refundAmount > capital) {
            revert InvalidRefundAmount();
        }
        capital -= refundAmount;
        sttx.burn(msgSender, burnAmount);
        SafeERC20.safeTransfer(
            IERC20Safe(address(dusx)),
            msgSender,
            refundAmount
        );
        sttx.rebase();
        emit CapitalDecreased(refundAmount);
        emit TokensRefunded(msgSender, refundAmount);
    }

    /**
     * @notice Calculates refund amount based on burn amount
     * @param burnAmount Amount of STTX to burn
     * @return Refund amount in DUSX
     */
    function getRefundAmount(uint256 burnAmount) public view returns (uint256) {
        uint256 totalSupply = sttx.totalSupplyRebased() == 0
            ? sttx.totalSupply()
            : sttx.totalSupplyRebased();
        if (totalSupply == 0) revert TotalSupplyIsZero();
        if (burnAmount > totalSupply) revert InvalidBurnAmount();
        return (capital * burnAmount) / totalSupply;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
