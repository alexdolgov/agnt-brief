//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./IBabyDogeDoggies.sol";

/** @title doggieMintingStation.
@dev It is a contract that allow different factories to mint
*/

contract DoggieMintingStation is AccessControl {
    IBabyDogeDoggies public babyDogeDoggies;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // Modifier for minting roles
    modifier onlyMinter() {
        require(hasRole(MINTER_ROLE, _msgSender()), "Not a minting role");
        _;
    }

    // Modifier for admin roles
    modifier onlyOwner() {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Not an admin role");
        _;
    }

    constructor(IBabyDogeDoggies _babyDogeDoggies) {
        babyDogeDoggies = _babyDogeDoggies;
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    /**
     * @dev Mint NFTs from the babyDogeDoggies contract.
     */
    function mintCollectible(
        address _tokenReceiver,
        uint8 _doggieId
    ) external onlyMinter returns (uint256) {
        uint256 tokenId = babyDogeDoggies.mint(_tokenReceiver, _doggieId);
        return tokenId;
    }

    /**
     * @dev Set a unique URI for each team
     */
    function setTeamURIs(uint[] calldata _teamIds, string[] calldata _teamURIs)
    external
    onlyMinter
    {
        require(_teamURIs.length == _teamIds.length, "Invalid length");
        babyDogeDoggies.setTeamURIs(_teamIds, _teamURIs);
    }

    /**
     * @dev It transfers the ownership of the NFT contract
     * to a new address.
     * Only the main admins can set it.
     */
    function changeOwnershipNFTContract(address _newOwner) external onlyOwner {
        babyDogeDoggies.transferOwnership(_newOwner);
    }
}