// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/// @title veSTO: Vote-Escrowed STO Token
contract VeSTO is ERC20, AccessControl {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice A role designated for minting veSTO.
    /// @dev Hash digests for `MINTER_ROLE`
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice A role designated for burning veSTO.
    /// @dev Hash digests for `BURNER_ROLE`
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @notice If veSTO can be transferred.
    bool public transferRestricted;

    /// @notice Mapping of addresses that are allowed to transfer tokens to any address
    mapping(address => bool) public allowedFrom;
    /// @notice Mapping of addresses that are allowed to receive tokens from any address
    mapping(address => bool) public allowedTo;

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    event SetAllowedFrom(address indexed from, bool isAllowedFrom);
    event SetAllowedTo(address indexed to, bool isAllowedTo);
    event TransferRestrictionsEnabled();
    event TransferRestrictionsDisabled();

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _admin) ERC20("Vote-Escrowed STO", "veSTO") {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        transferRestricted = true;
        emit TransferRestrictionsEnabled();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice This function allows the admin to set the allowedFrom status of an address
    /// @param _from The address whose allowedFrom status is being set
    /// @param _isAllowedFrom The new allowedFrom status
    function setAllowedFrom(
        address _from,
        bool _isAllowedFrom
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        allowedFrom[_from] = _isAllowedFrom;
        emit SetAllowedFrom(_from, _isAllowedFrom);
    }

    /// @notice This function allows the admin to set the allowedTo status of an address
    /// @param _to The address whose allowedFrom status is being set
    /// @param _isAllowedTo The new allowedFrom status
    function setAllowedTo(
        address _to,
        bool _isAllowedTo
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        allowedTo[_to] = _isAllowedTo;
        emit SetAllowedTo(_to, _isAllowedTo);
    }

    /// @notice This function allows the admin to disable transfer restrictions
    function disableTransferRestrictions()
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(
            transferRestricted,
            "Transfer restrictions are already disabled"
        );

        transferRestricted = false;
        emit TransferRestrictionsDisabled();
    }

    /// @notice This function allows the admin to enable transfer restrictions
    function enableTransferRestrictions()
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(
            !transferRestricted,
            "Transfer restrictions are already enabled"
        );

        transferRestricted = true;
        emit TransferRestrictionsEnabled();
    }

    /// @notice This function allows the MINTER_ROLE to mint veSTO to an address
    /// @param _to The receiver address
    /// @param _amount The amount of the token will be minted
    function mint(address _to, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    /// @notice This function allows the BURNER_ROLE to burn veSTO from an address
    /// @param _from The address which veSTO will be burned from
    /// @param _amount The amount of the token will be burned
    function burn(
        address _from,
        uint256 _amount
    ) external onlyRole(BURNER_ROLE) {
        _burn(_from, _amount);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Overrides the _update function to enforce transfer restrictions
     * @param _from the address tokens are being transferred from
     * @param _to the address tokens are being transferred to
     * @param _amount the amount of tokens being transferred
     */
    function _update(
        address _from,
        address _to,
        uint256 _amount
    ) internal override {
        if (transferRestricted) {
            require(
                _from == address(0) ||
                    _to == address(0) ||
                    allowedFrom[_from] ||
                    allowedTo[_to],
                "not in whitelist"
            );
        }
        super._update(_from, _to, _amount);
    }
}
