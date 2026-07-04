// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {ERC20} from "./ERC20.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// interfaces
import {IAuthority} from "entitlements/src/interfaces/IAuthority.sol";

import {Role} from "entitlements/src/config/enums.sol";

import "../../config/constants.sol";
import "../../config/errors.sol";

abstract contract PermissionedToken is ERC20, OwnableUpgradeable, UUPSUpgradeable {
    /// @notice authority to check entitlements
    IAuthority public immutable authority;

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    uint256 internal _decimals;

    uint256 internal immutable _initialChainId;

    bytes32 internal _initialDomainSeparator;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[27] private __gap;

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _authority) ERC20() initializer {
        if (_authority == address(0)) revert BadAddress();

        authority = IAuthority(_authority);

        _initialChainId = block.chainid;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function __PermissionedToken_init(string memory _name, string memory _symbol, uint8 _dec, address _owner)
        internal
        onlyInitializing
    {
        if (_owner == address(0)) revert BadAddress();
        _transferOwnership(_owner);

        name = _name;
        symbol = _symbol;
        _decimals = _dec;

        _initialDomainSeparator = _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                        Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(address /*newImplementation*/ ) internal virtual override {
        _checkOwner();
    }

    /*///////////////////////////////////////////////////////////////
                            ERC20 Functions
    //////////////////////////////////////////////////////////////*/

    function transfer(address _to, uint256 _amount) public virtual override returns (bool) {
        _checkPermissions(msg.sender);
        _checkCanReceive(_to);

        return super.transfer(_to, _amount);
    }

    function transferFrom(address _from, address _to, uint256 _amount) public virtual override returns (bool) {
        if (_isFundAdminOrigin()) {
            balanceOf[_from] -= _amount;

            // Cannot overflow because the sum of all user
            // balances can't exceed the max uint256 value.
            unchecked {
                balanceOf[_to] += _amount;
            }

            emit Transfer(_from, _to, _amount);

            return true;
        } else {
            _checkPermissions(msg.sender);
            _checkCanReceive(_from);
            _checkCanReceive(_to);

            return super.transferFrom(_from, _to, _amount);
        }
    }

    function decimals() public view returns (uint8) {
        return uint8(_decimals);
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function DOMAIN_SEPARATOR() public view virtual override returns (bytes32) {
        return block.chainid == _initialChainId ? _initialDomainSeparator : _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                            Migration
    //////////////////////////////////////////////////////////////*/

    function migrate(string memory _name, string memory _symbol, uint8 _dec) public virtual {
        _checkOwner();

        name = _name;
        symbol = _symbol;
        _decimals = _dec;

        _initialDomainSeparator = _computeDomainSeparator();
    }

    /*///////////////////////////////////////////////////////////////
                            Permission Functions
    //////////////////////////////////////////////////////////////*/

    function _checkPermissions(address _address) internal view virtual {
        if (!authority.canCall(_address, address(this), msg.sig)) revert NotPermissioned();
    }

    function _checkCanReceive(address _address) internal view {
        if (!authority.canCall(_address, address(this), this.transfer.selector)) revert NotPermissioned();
    }

    function _isFundAdmin() internal view virtual returns (bool) {
        return authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin);
    }

    /**
     * @notice checks that tx.origin is a Fund Admin and that the msg.sender is known
     */
    function _isFundAdminOrigin() internal view virtual returns (bool) {
        // checks if origin is fund admin and if the msg.sender is a known good address
        // currently only used on transferFrom
        return authority.doesUserHaveRole(tx.origin, Role.System_FundAdmin)
            && (msg.sender == tx.origin || authority.getUserRoles(msg.sender) != bytes32(0));
    }

    function _assertFundAdmin() internal view virtual {
        if (!_isFundAdmin()) revert NotPermissioned();
    }
}
