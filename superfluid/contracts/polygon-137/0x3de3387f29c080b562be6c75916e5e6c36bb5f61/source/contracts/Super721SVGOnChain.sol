pragma solidity ^0.8.0;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { Base64 } from "@openzeppelin/contracts/utils/Base64.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

/*
    Super721SVGOnChain
*/

contract Super721SVGOnChain {

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

    event Transfer(address indexed from, address indexed to, uint256 indexed id);

    string public name;
    string public symbol;
    Counters.Counter private _tokenIds;
    mapping(uint256 => StreamData) internal _tokenCFAData;

    function tokenURI(uint256 id) public view returns (string memory) {
        StreamData memory stream = _tokenCFAData[id];
        bytes memory dataURI = abi.encodePacked(
            '{',
            '"name": "CFA NFT: ', id.toString(), '",',
            '"description": "Represents a stream on chain",',
            '"image": "', _generateSVG( stream.token, mock_cfa_getFlowRate(), stream.sender), '"',
            '}'
        );
        return string(
            abi.encodePacked(
                "data:application/json;base64,",
                Base64.encode(dataURI)
            )
        );
    }
    function _generateSVG(address token, int96 flowRate, address sender) internal view returns(string memory) {

        bytes memory svg = abi.encodePacked(
            '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350">',
            '<style>.base { fill: white; font-family: serif; font-size: 14px; }</style>',
            '<rect width="100%" height="100%" fill="black" />',
            '<text x="50%" y="40%" class="base" dominant-baseline="middle" text-anchor="middle">', "Token: ", Strings.toHexString(uint256(uint160(token)), 20),'</text>',
            '<text x="50%" y="50%" class="base" dominant-baseline="middle" text-anchor="middle">', "Sender: ", Strings.toHexString(uint256(uint160(sender)), 20),'</text>',
            '<text x="50%" y="60%" class="base" dominant-baseline="middle" text-anchor="middle">', "FlowRate: ", uint256(uint96(flowRate)).toString(),'</text>',
            '</svg>'
        );
        return string(
            abi.encodePacked(
                "data:image/svg+xml;base64,",
                Base64.encode(svg)
            )
        );
    }

    mapping(uint256 => address) internal _ownerOf;
    mapping(address => uint256) internal _balanceOf;

    function ownerOf(uint256 id) public view virtual returns (address owner) {
        owner = _ownerOf[id];
        if(owner == address(0)) revert NOT_MINTED();
    }

    function balanceOf(address owner) public view virtual returns (uint256) {
        return owner == address(0) ? 0 : _balanceOf[owner];
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
        return true;
    }

    function _mint(uint256 id, StreamData memory streamData) internal virtual {
        address to = streamData.receiver;
        if(to == address(0)) revert ZERO_ADDRESS();
        if(_ownerOf[id] != address(0)) revert ALREADY_MINTED();
        // Counter overflow is incredibly unrealistic.
    unchecked {
        _balanceOf[to]++;
    }
        _ownerOf[id] = to;
        _tokenCFAData[id] = streamData;
        emit Transfer(address(0), to, id);
    }

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function mock_cfa_getFlowRate() public view returns(int96 flowRate) {
        return 100000000;
    }
}