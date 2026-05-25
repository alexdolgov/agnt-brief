// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import {OptionTokenV3} from "./OptionTokenV3.sol";

contract BribeOptionToken is ERC20, AccessControl {
    /// -----------------------------------------------------------------------
    /// Roles
    /// -----------------------------------------------------------------------
    /// @dev The identifier of the role which maintains other roles and settings
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN");

    /// @dev The identifier of the role which is allowed to mint options token
    bytes32 public constant MINTER_ROLE = keccak256("MINTER");

    /// @dev The identifier of the role which allows accounts to pause execrcising options
    /// in case of emergency
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER");

    /// @notice Is minting new tokens currently permissioned
    bool public permissionedMint = false;

    /// -----------------------------------------------------------------------
    /// Errors
    /// -----------------------------------------------------------------------
    error OptionToken_PastDeadline();
    error OptionToken_NoAdminRole();
    error OptionToken_NoMinterRole();
    error OptionToken_NoPauserRole();
    error OptionToken_Paused();

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------
    event ExerciseVe(
        address indexed sender,
        address indexed recipient,
        uint256 amount,
        uint256 nftId
    );

    event PauseStateChanged(bool isPaused);

    /// -----------------------------------------------------------------------
    /// Modifiers
    /// -----------------------------------------------------------------------
    /// @dev A modifier which checks that the caller has the admin role.
    modifier onlyAdmin() {
        if (!hasRole(ADMIN_ROLE, msg.sender)) revert OptionToken_NoAdminRole();
        _;
    }

    /// @dev A modifier which checks that the caller has the admin role.
    modifier onlyMinter() {
        if (
            permissionedMint &&
            !hasRole(ADMIN_ROLE, msg.sender) &&
            !hasRole(MINTER_ROLE, msg.sender)
        ) revert OptionToken_NoMinterRole();
        _;
    }

    /// @dev A modifier which checks that the caller has the pause role.
    modifier onlyPauser() {
        if (!hasRole(PAUSER_ROLE, msg.sender))
            revert OptionToken_NoPauserRole();
        _;
    }

    /// @notice The underlying token purchased during redemption
    OptionTokenV3 public immutable optionToken;

    /// @notice Is excersizing options currently paused
    bool public isPaused;

    constructor(
        string memory _name,
        string memory _symbol,
        OptionTokenV3 _optionToken,
        address _admin
    ) ERC20(_name, _symbol) {
        _grantRole(ADMIN_ROLE, _admin);
        _grantRole(PAUSER_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        _setRoleAdmin(MINTER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(PAUSER_ROLE, ADMIN_ROLE);

        optionToken = _optionToken;
    }

    /// @notice Called by the admin to mint options tokens. Admin must grant token approval.
    /// @param _to The address that will receive the minted options tokens
    /// @param _amount The amount of options tokens that will be minted
    function mint(address _to, uint256 _amount) external onlyMinter {
        // transfer underlying tokens from the caller
        optionToken.transferFrom(msg.sender, address(this), _amount); // BLOTR reverts on failure
        // mint options tokens
        _mint(_to, _amount);
    }

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @param _amount The amount of options tokens to exercise
    /// @param _maxPaymentAmount The maximum payment in principal
    /// @param _recipient The recipient of the purchased underlying tokens
    /// @param _deadline The Unix timestamp (in seconds) after which the call will revert
    /// @return nftId 
    function exerciseVe(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        address _recipient,
        uint256 _deadline
    ) external returns (uint256 nftId) {
        if (block.timestamp > _deadline) revert OptionToken_PastDeadline();
        if (isPaused) revert OptionToken_Paused();

        // burn callers tokens
        _burn(msg.sender, _amount);

        (, nftId) = optionToken.exerciseVe(_amount, _maxPaymentAmount, _recipient, 0, _deadline);

        emit ExerciseVe(msg.sender, _recipient, _amount, nftId);
    }

    /// @notice called by the admin to toggle the permissioned mint state.
    function togglePermissionedMint() external onlyAdmin {
        permissionedMint = !permissionedMint;
    }

    /// @notice called by the admin to re-enable option exercising from a paused state.
    function unPause() external onlyAdmin {
        if (!isPaused) return;
        isPaused = false;
        emit PauseStateChanged(false);
    }

    /// -----------------------------------------------------------------------
    /// Pauser functions
    /// -----------------------------------------------------------------------
    function pause() external onlyPauser {
        if (isPaused) return;
        isPaused = true;
        emit PauseStateChanged(true);
    }
}
