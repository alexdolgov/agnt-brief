// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

/// @title JPEG'd Synthetic Position Token
/// @notice This contract is used to abstract away position ownership in our synthetic architecure. Positions are in the form of ERC721. No position metadata is saved.
///         It is only verified that the caller is the owner of the position (see Controller contract)
/// @dev Roles (at launch)
/// DEFAULT_ADMIN_ROLE: DAO
/// CONTROLLER_ROLE: Controller
contract PositionToken is ERC721Enumerable, AccessControl {
    uint256 private nextId;
    bytes32 private constant CONTROLLER_ROLE = keccak256("CONTROLLER_ROLE");

    constructor() ERC721("JPEG Synths Positions", "JSP") {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice Opens a new empty position
    /// @dev Emits a {Transfer} event with `from` set to the zero address.
    ///
    /// Requirements:
    ///
    /// - `_owner` cannot be the zero address.
    ///
    function openPosition(
        address _owner
    ) external onlyRole(CONTROLLER_ROLE) returns (uint256) {
        uint256 currentId = nextId;
        _mint(_owner, currentId);
        nextId++;
        return currentId;
    }

    /// @notice Closes an already opened position
    /// @dev Emits a {Transfer} event with `to` set to the zero address.
    function closePosition(
        uint256 _positionId
    ) external onlyRole(CONTROLLER_ROLE) {
        _burn(_positionId);
    }

    /// @param _positionId ID of the position
    /// @return flag indicating if position exists or not
    function exists(uint256 _positionId) external view returns (bool) {
        return _exists(_positionId);
    }

    /// @param interfaceId ID of the interface
    /// @return flag indicating if interface with this ID is supported
    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(ERC721Enumerable, AccessControl)
        returns (bool)
    {
        return ERC721Enumerable.supportsInterface(interfaceId);
    }
}
