// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";
import { ERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin-contracts-5.1.0/token/ERC20/extensions/ERC20Permit.sol";
import { ERC20FlashMint } from "@openzeppelin-contracts-5.1.0/token/ERC20/extensions/ERC20FlashMint.sol";
import { ERC20Wrapper } from "@openzeppelin-contracts-5.1.0/token/ERC20/extensions/ERC20Wrapper.sol";
import { AccessControl } from "@openzeppelin-contracts-5.1.0/access/AccessControl.sol";
import { IERC3156FlashLender } from "@openzeppelin-contracts-5.1.0/interfaces/IERC3156FlashLender.sol";

import { IpBERA } from "./interfaces/IpBERA.sol";
import { Constants } from "../Constants.sol";

/**
 * @title pBERA
 * @author BeraPaw
 * @notice ERC20 token representing liquid staked BERA in the BeraPaw protocol
 * @dev Implementation of liquid staking token with:
 * Core functions:
 * - mint/burn: Controlled by BeraPawStaker
 * - flash loans: Configurable amounts and fees
 * - permit: ERC20 gasless approvals
 */
contract pBERA is IpBERA, ERC20, ERC20Permit, ERC20FlashMint, AccessControl {
    using Math for uint256;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IpBERA
    address public immutable beraStaker;

    uint16 constant ONE_HUNDRED_PERCENT = 10_000;

    /// @dev Can only give admin role.
    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    /// @dev Can only set flashMint parameters.
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    /// @dev Can only flashMint without fees and limit, used to facilitate internal operations.
    bytes32 public constant ROLE_FLASH_MINTER = Constants.ROLE_FLASH_MINTER;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STORAGE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /// @inheritdoc IpBERA
    uint16 public flashMintPercentualFee;
    /// @inheritdoc IpBERA
    address public flashFeeCollector;
    /// @inheritdoc IpBERA
    uint256 public flashMaxMint;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        MODIFIERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    modifier onlyBeraStaker() {
        require(_msgSender() == beraStaker, OnlyBeraStaker());
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INITIALIZATION                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    constructor(
        address _beraStaker,
        address _owner
    )
        ERC20("Paw Bera", "pBERA")
        ERC20Permit("Paw Bera")
        ERC20FlashMint()
    {
        beraStaker = _beraStaker;

        flashMintPercentualFee = 50; //0.5%
        flashMaxMint = 0; // We start with no flash mint

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_FLASH_MINTER, ROLE_ADMIN);

        _grantRole(ROLE_GOD, _owner);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IpBERA
    function setFlashMintFee(uint16 _flashMintPercentualFee) public onlyRole(ROLE_ADMIN) {
        require(_flashMintPercentualFee <= ONE_HUNDRED_PERCENT, InvalidFee(_flashMintPercentualFee));
        flashMintPercentualFee = _flashMintPercentualFee;
        emit FlashFeeSet(_flashMintPercentualFee);
    }

    /// @inheritdoc IpBERA
    function setFlashMaxMint(uint256 _maxFlashMint) public onlyRole(ROLE_ADMIN) {
        flashMaxMint = _maxFlashMint;
        emit FlashMaxMintSet(_maxFlashMint);
    }

    /// @inheritdoc IpBERA
    function setFlashFeeCollector(address _feeCollector) public onlyRole(ROLE_ADMIN) {
        require(_feeCollector != address(0), ZeroAddress());
        flashFeeCollector = _feeCollector;
        emit FlashFeeCollectorSet(_feeCollector);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   BERAPAW FORGE FUNCTIONS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IpBERA
    function mint(address to, uint256 amount) public onlyBeraStaker {
        _mint(to, amount);
    }

    /// @inheritdoc IpBERA
    function burn(address from, uint256 amount) public onlyBeraStaker {
        _burn(from, amount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          OVERRIDES                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Get the max flash loan amount of the given token.
     * @dev Only LBGT can be flash loaned.
     * The ROLE_FLASH_MINTER can flash mint regardless of the limit.
     * @param token The token to get the max flash loan amount for.
     * @return The max flash loan amount of the given token.
     */
    function maxFlashLoan(address token) public view override returns (uint256) {
        if (token != address(this)) {
            return 0;
        }
        if (hasRole(ROLE_FLASH_MINTER, _msgSender())) {
            return type(uint128).max - totalSupply();
        }
        return Math.min(type(uint128).max - totalSupply(), flashMaxMint);
    }

    /**
     * @notice Get the flash fee for a given amount of tokens.
     * @dev Only used for flash loans. The ROLE_FLASH_MINTER can flash mint with zero fee.
     * @param value The amount of tokens to get the flash fee for.
     * @return The flash fee for the given amount of tokens.
     */
    function _flashFee(address, /*token*/ uint256 value) internal view override returns (uint256) {
        if (hasRole(ROLE_FLASH_MINTER, _msgSender())) {
            return 0;
        }
        return value.mulDiv(flashMintPercentualFee, ONE_HUNDRED_PERCENT);
    }

    /**
     * @notice Get the address to send the flash fee to.
     * @dev Only used for flash loans.
     * @return The address to send the flash fee to.
     */
    function _flashFeeReceiver() internal view override returns (address) {
        return flashFeeCollector;
    }
}
