pragma solidity ^0.8.0;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";
import {IConstantFlowAgreementV1} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/IConstantFlowAgreementV1.sol";
import { ISuperfluid, ISuperToken } from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperfluid.sol";

/*
    Super721SVGOffchain - NFT that points to JSON Offchain
*/

contract Super721SVGOffChain {

    using Strings for uint256;
    using Counters for Counters.Counter;

    struct StreamData {
        address token;
        address sender;
        address receiver;

    }

    error NOT_ALLOWED();
    error ALREADY_MINTED();
    error NOT_MINTED();
    error ZERO_ADDRESS();
    error EMPTY_DATA();
    error NOT_STREAM_USER();

    event Transfer(address indexed from, address indexed to, uint256 indexed id);

    string public name;
    string public symbol;
    IConstantFlowAgreementV1 public cfaV1;
    Counters.Counter private _tokenIds;
    mapping(bytes32 => uint256) internal _revertStreamToId;

    function tokenURI(uint256 id) public view returns (string memory) {
        return string(abi.encodePacked('https://nft.x.superfluid.dev/cfa/', id.toString()));
    }

    mapping(uint256 => address) internal _ownerOf;
    mapping(address => uint256) internal _balanceOf;

    constructor(address cfa, string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function ownerOf(uint256 id) public view virtual returns (address owner) {
        owner = _ownerOf[id];
        if(owner == address(0)) revert NOT_MINTED();
    }

    function balanceOf(address owner) public view virtual returns (uint256) {
        return owner == address(0) ? 0 : _balanceOf[owner];
    }

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return
        interfaceId == 0x01ffc9a7 || // ERC165 Interface ID for ERC165
        interfaceId == 0x80ac58cd || // ERC165 Interface ID for ERC721
        interfaceId == 0x5b5e139f; // ERC165 Interface ID for ERC721Metadata
    }

    //Mock until SF integration
    function onCreate(StreamData memory newFlowData, address token) public returns(bool) {
        _tokenIds.increment();
        newFlowData.token = token;
        _mint(_tokenIds.current(), newFlowData);
        return true;
    }

    function onUpdate(StreamData memory updatedFlowData, address token, int96 oldFlowRate) public returns(bool) {
        return true;
    }

    function onDelete(StreamData memory updatedFlowData, address token, int96 oldFlowRate) public returns(bool) {
        _burn(token, updatedFlowData.sender, updatedFlowData.receiver);
        return true;
    }

    function _mint(uint256 id, StreamData memory streamData) internal {
        if(streamData.receiver == address(0)) revert ZERO_ADDRESS();
        bytes32 reverseKey = keccak256(abi.encodePacked(
                streamData.token,
                streamData.sender,
                streamData.receiver
            ));
        if(_revertStreamToId[reverseKey] != 0) revert ALREADY_MINTED();
        if(_ownerOf[id] != address(0)) revert ALREADY_MINTED();
    unchecked {
        _balanceOf[streamData.receiver]++;
    }
        _ownerOf[id] = streamData.receiver;
        _revertStreamToId[reverseKey] = id;
        emit Transfer(address(0), streamData.receiver, id);
    }

    function _burn(address token, address sender, address receiver) internal {
        bytes32 reverseKey = keccak256(abi.encodePacked(token, sender, receiver));
        uint256 id = _revertStreamToId[reverseKey];
        if(id == 0) revert NOT_MINTED();
        unchecked {
            _balanceOf[receiver]--;
        }
        delete _ownerOf[id];
        delete _revertStreamToId[reverseKey];
        emit Transfer(receiver, address(0), id);
    }

    function mint(address token, address sender, address receiver)  public {
        if(msg.sender != sender && msg.sender != receiver) revert NOT_STREAM_USER();
        int96 flowRate = _getFlowRate(token, sender, receiver);
        if(flowRate > 0) {
            _tokenIds.increment();
            _mint(_tokenIds.current(), StreamData(token, sender, receiver));
        }
    }

    function burn(address token, address sender, address receiver) public {
        if(msg.sender != receiver) revert NOT_STREAM_USER();
        int96 flowRate = _getFlowRate(token, sender, receiver);
        if(flowRate == 0) {
            _burn(token, sender, receiver);
        }
    }

    function approve(address spender, uint256 id) public {
        revert NOT_ALLOWED();
    }

    function setApprovalForAll(address operator, bool approved) public {
        revert NOT_ALLOWED();
    }

    function transferFrom(address from,address to,uint256 id) public {
        revert NOT_ALLOWED();
    }

    function safeTransferFrom(address from,address to,uint256 id) public {
        revert NOT_ALLOWED();
    }

    function safeTransferFrom(address from, address to, uint256 id,bytes calldata data) public {
        revert NOT_ALLOWED();
    }

    function _getFlowRate(address token, address sender, address receiver) internal view returns(int96 flowRate) {
        (,flowRate,,) = cfaV1.getFlow(ISuperToken(token), sender, receiver);
    }
}