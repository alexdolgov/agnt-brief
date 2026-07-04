pragma solidity ^0.8.0;


import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";

import {ERC4973Upgradeable, IERC4973} from "../implementations/ercs/ERC4973Upgradeable.sol";
import {IERC721Metadata} from "../interfaces/ercs/extensions/IERC721Metadata.sol";
import {Strings} from "openzeppelin/utils/Strings.sol";

contract NTStakedToken is
    Initializable,
    UUPSUpgradeable,
    ERC4973Upgradeable,
    OwnableUpgradeable
{
    using Strings for uint256;
    using Strings for address;

    mapping (address => string) contractName;

    address stakerAddress;
    string public baseURI;

    struct TokenData {
        address citizenContract;
        uint64 citizenId;
    }

    modifier onlyStaker() {
        require(msg.sender == stakerAddress);
        _;
    }

    function setContractName(address contractAddr, string memory name) external onlyOwner {
        contractName[contractAddr] = name;
    }

    function setStakerAddress(address _stakerAddr) external onlyOwner {
        stakerAddress = _stakerAddr;
    }

    function initialize(string memory version) external initializer {
        __ERC4973_init("Neo Tokyo Staked Citizen", "CTZN", version);
        __Ownable_init();
    }

    function _authorizeUpgrade(address) internal virtual override onlyOwner {}

            
    function encodeTokenID(address addr, uint64 citizenId) internal  pure returns (uint256 encoded)  {
        // This encodes a token id like this:
        // 0xffffffffffffffffffffffffffffffffffffffff00000000ffffffffffffffff
        // where the upper 160 bits contain the address
        // and the lower  64 bits contain the token ID.
        // This is set up in a way to ensure the numbers are incremental 
        // The address acts as a "name"space, there should never be any overlap if the address is different.
        // This gives us a lot of flexibility. We can store 18 quintillion token IDs
        // from each individual contract.
        assembly {
            // this is the equivalent of
            // encoded = uint256(addr);
            // encoded <<= 96;
            // encoded |= citizen id
            encoded := or(shl(96, addr), citizenId)
        }
    }

    function decodeTokenID(uint256 id) internal pure returns (address, uint256){
        return (address(uint160(id >> 96) ), uint64((id)));
    }


    function give(address to, bytes calldata metadata, bytes calldata) external onlyStaker override returns (uint256 tokenId) {
        (address citizenContract, uint64 citizenId) = abi.decode(metadata, (address, uint64));
        tokenId = encodeTokenID(citizenContract, citizenId);
        _mint(address(stakerAddress), to, tokenId);
    
    }

   function burn(uint256 tokenId) external onlyStaker returns (uint256) {
        require(_exists(tokenId), "token does not exist");
        _burn(tokenId);
        return tokenId;
    }

    function setBaseURI(string memory _baseURI) external onlyOwner {
        baseURI = _baseURI;
    }

    function tokenURI(uint256 tokenId) external view virtual override returns (string memory) {
        require(_exists(tokenId), "token does not exist");
        (address citizenContract, uint256 decodedTokenId) = decodeTokenID(tokenId);
        return string.concat(baseURI, contractName[citizenContract], "/", decodedTokenId.toString());
    }
}