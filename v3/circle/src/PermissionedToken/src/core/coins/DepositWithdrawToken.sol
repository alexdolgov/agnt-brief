// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

import {PermissionedToken, Role} from "./PermissionedToken.sol";

// interfaces
import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20Permit} from "openzeppelin/token/ERC20/extensions/draft-IERC20Permit.sol";

import "../../config/errors.sol";

abstract contract DepositWithdrawToken is ReentrancyGuardUpgradeable, PermissionedToken {
    using SafeERC20 for IERC20Metadata;

    /*///////////////////////////////////////////////////////////////
                            Storage V1
    //////////////////////////////////////////////////////////////*/

    /// @notice the address of the underlying erc-20 token
    IERC20Metadata public underlying;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[20] private __gap;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event Deposit(address indexed from, uint256 amount);

    event Withdrawal(address indexed to, uint256 amount);

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority) PermissionedToken(_authority) initializer {}

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/
    function __DepositWithdrawToken_init(
        string memory _name,
        string memory _symbol,
        uint8 _dec,
        address _owner,
        address _underlying
    ) internal onlyInitializing {
        __PermissionedToken_init(_name, _symbol, _dec, _owner);
        __ReentrancyGuard_init_unchained();

        underlying = IERC20Metadata(_underlying);
    }

    /*///////////////////////////////////////////////////////////////
                        Deposit Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposits underlying to mint wrapped version to a recipient
     * @param _from is the address to draw from
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of underlying to deposit (underlying decimals)
     */
    function _depositFor(address _from, address _recipient, uint256 _amount) internal virtual returns (uint256) {
        if (_amount == 0) revert BadAmount();
        if (address(underlying) == address(0)) revert NoUnderlying();

        _mint(_recipient, _amount);

        emit Deposit(_recipient, _amount);

        if (_from != address(this)) underlying.safeTransferFrom(_from, address(this), _amount);

        return _amount;
    }

    /**
     * @notice Deposits underlying to mint wrapped version
     * @param _amount is the amount of coin to deposit
     */
    function deposit(uint256 _amount) external virtual nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);

        return _depositFor(msg.sender, msg.sender, _amount);
    }

    /**
     * @notice Deposits underlying to mint wrapped version to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of coin to deposit
     */
    function depositFor(address _recipient, uint256 _amount) external virtual nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);
        if (msg.sender != _recipient) _checkCanReceive(_recipient);

        return _depositFor(msg.sender, _recipient, _amount);
    }

    function depositFromWithPermit(
        address _from,
        address _recipient,
        uint256 _amount,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external virtual nonReentrant returns (uint256) {
        _assertFundAdmin();

        IERC20Permit(address(underlying)).permit(_from, address(this), _amount, _deadline, _v, _r, _s);

        return _depositFor(_from, _recipient, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                        Withdraw Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Withdraws a underlying by burning the wrapper and sends to a recipient
     * @param _from is the address of the sender
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of wrapper to burn
     */
    function _withdrawTo(address _from, address _recipient, uint256 _amount) internal virtual returns (uint256) {
        if (_amount == 0) revert BadAmount();
        if (address(underlying) == address(0)) revert NoUnderlying();

        _burn(_from, _amount);

        emit Withdrawal(_recipient, _amount);

        underlying.safeTransfer(_recipient, _amount);

        return _amount;
    }

    /**
     * @notice Withdraws underlying by burning wrapped token
     * @param _amount is the amount of wrapped token to burn
     * @param _v is the recovery id
     * @param _r is the r value of the signature
     * @param _s is the s value of the signature
     */
    function withdraw(uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) external virtual nonReentrant returns (uint256) {
        _checkPermissions(msg.sender);

        _assertWithdrawSignature(msg.sender, _amount, _v, _r, _s);

        return _withdrawTo(msg.sender, msg.sender, _amount);
    }

    /**
     * @notice Withdraws underlying by burning wrapped token and sends to a recipient
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of wrapped token to burn
     * @param _v is the recovery id
     * @param _r is the r value of the signature
     * @param _s is the s value of the signature
     */
    function withdrawTo(address _recipient, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s)
        external
        virtual
        nonReentrant
        returns (uint256)
    {
        _checkPermissions(msg.sender);
        if (msg.sender != _recipient) _checkCanReceive(_recipient);

        _assertWithdrawSignature(_recipient, _amount, _v, _r, _s);

        return _withdrawTo(msg.sender, _recipient, _amount);
    }

    /**
     * @notice Withdraws underlying by burning wrapped token and sends to a recipient
     * @dev callable by Fund Admin role
     * @param _from is the address of the sender
     * @param _recipient is the address of the recipient
     * @param _amount is the amount of wrapped token to burn
     */
    function withdrawToFundAdminOnly(address _from, address _recipient, uint256 _amount)
        external
        virtual
        nonReentrant
        returns (uint256)
    {
        // not using _assertFundAdmin to ensure  direct caller is Fund Admin
        if (!authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin)) revert NotPermissioned();

        return _withdrawTo(_from, _recipient, _amount);
    }

    /*///////////////////////////////////////////////////////////////
                            Migration
    //////////////////////////////////////////////////////////////*/

    function migrate(string memory _name, string memory _symbol, uint8 _dec, address _underlying) public virtual {
        _checkOwner();

        name = _name;
        symbol = _symbol;
        _decimals = _dec;
        underlying = IERC20Metadata(_underlying);

        _initialDomainSeparator = _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                            Internal Functions
    //////////////////////////////////////////////////////////////*/

    function _assertWithdrawSignature(address _to, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) internal {
        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256("Withdraw(address to,uint256 amount,uint256 nonce)"), _to, _amount, nonces[_to]++
                            )
                        )
                    )
                ),
                _v,
                _r,
                _s
            );

            if (recoveredAddress == address(0) || recoveredAddress != owner()) revert InvalidSignature();
        }
    }
}
