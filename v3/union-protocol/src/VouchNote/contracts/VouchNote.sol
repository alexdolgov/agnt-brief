// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

interface IUserManager {
    function getVouchingAmount(address _staker, address borrower) external view returns (uint256);
}

contract VouchNote is ERC721, Ownable {
    /// ---------------------------------------------------------------------------
    /// SVG Part Keys
    /// ---------------------------------------------------------------------------

    bytes32 public constant START = keccak256("START");

    bytes32 public constant WHITE_BACKGROUND = keccak256("WHITE_BACKGROUND");

    bytes32 public constant HEADER_TO_TEXT_START = keccak256("HEADER_TO_TEXT_START");
    bytes32 public constant HEADER_TO_TEXT_END = keccak256("HEADER_TO_TEXT_END");
    bytes32 public constant HEADER_FROM_TEXT_START = keccak256("HEADER_FROM_TEXT_START");
    bytes32 public constant HEADER_FROM_TEXT_END = keccak256("HEADER_FROM_TEXT_END");

    bytes32 public constant BODY_BEFORE = keccak256("BODY_BEFORE");
    bytes32 public constant BODY_BACKGROUND = keccak256("BODY_BACKGROUND");
    bytes32 public constant BODY_AFTER = keccak256("BODY_AFTER");

    bytes32 public constant VOUCH_AMOUNT_BEFORE = keccak256("VOUCH_AMOUNT_BEFORE");
    bytes32 public constant VOUCH_AMOUNT_AFTER = keccak256("VOUCH_AMOUNT_AFTER");

    bytes32 public constant GREY_FOOTER = keccak256("GREY_FOOTER");

    bytes32 public constant FOOTER_TEXT = keccak256("FOOTER_TEXT");

    bytes32 public constant UNION_LOGO = keccak256("UNION_LOGO");

    bytes32 public constant END = keccak256("END");

    /// ---------------------------------------------------------------------------
    /// Storage
    /// ---------------------------------------------------------------------------

    /// @dev User manager contract address
    address public immutable userManager;

    /// @dev The current token ID
    uint256 public currentId;

    /// @dev Get each SVG part based on its key
    mapping(bytes32 => string) public getSvgPart;

    /// @dev Get message by token ID
    mapping(uint256 => string[]) public getMessages;

    /// @dev Get the sender of a token by token ID
    mapping(uint256 => address) public getFrom;

    /// ---------------------------------------------------------------------------
    /// Event
    /// ---------------------------------------------------------------------------

    /// @dev Emitted when an SVG part is set
    /// @param key Hashed key of part
    /// @param str String of part
    event SetSvgPart(bytes32 key, string str);

    /// @dev Emitted when a vouch note is minted
    /// @param from Address vouch note was sent from
    /// @param to Address vouch note was sent to
    /// @param message Message as an array of strings
    event VouchNoteSent(address from, address to, string[] message);

    /// ---------------------------------------------------------------------------
    /// Constructor
    /// ---------------------------------------------------------------------------

    /// @param _userManager UserManager contract
    constructor(address _userManager) ERC721("VouchNote", "vouchNOTE") {
        userManager = _userManager;
    }

    /// @dev Get the version
    /// @return Version string
    function version() external pure returns (string memory) {
        return "vouch-note-001";
    }

    /// ---------------------------------------------------------------------------
    /// Mint Functions
    /// ---------------------------------------------------------------------------

    /// @dev Mint a Vouch Note
    /// @param to Who to send the vouch note to
    /// @param strs The message to send
    function mint(address to, string[] memory strs) external {
        uint256 tokenId = ++currentId;
        uint256 strsLen = strs.length;

        uint256 vouchingAmount = IUserManager(userManager).getVouchingAmount(msg.sender, to);
        require(vouchingAmount > 0, "!vouch");

        for (uint256 i = 0; i < strsLen; i++) {
            getMessages[tokenId].push(strs[i]);
        }

        getFrom[tokenId] = msg.sender;

        _mint(to, tokenId);

        emit VouchNoteSent(msg.sender, to, strs);
    }

    /// ---------------------------------------------------------------------------
    /// Svg Internal Functions
    /// ---------------------------------------------------------------------------

    /// @dev Trim subset of a string
    /// @param start Start index
    /// @param end End index
    /// @return Trimmed string
    function trim(string calldata str, uint start, uint end) public pure returns (string memory) {
        return str[start:end];
    }

    /// @dev Convert a long address into a string with the format "0x0000...0000"
    /// @param a The address
    /// @return Address formatted as a string
    function _addressToString(address a) internal view returns (string memory) {
        string memory str = Strings.toHexString(a);
        return string(abi.encodePacked(this.trim(str, 0, 6), "...", this.trim(str, 16, 20)));
    }

    /// @dev Get the header "from" piece
    /// @param from The address sent from
    /// @return String representing the SVG part
    function _headerFrom(address from) internal view returns (bytes memory) {
        return
            abi.encodePacked(
                getSvgPart[HEADER_FROM_TEXT_START],
                _addressToString(from),
                getSvgPart[HEADER_FROM_TEXT_END]
            );
    }

    /// @dev Get the header "to" piece
    /// @param to The address sent to
    /// @return String representing the SVG part
    function _headerTo(address to) internal view returns (bytes memory) {
        return abi.encodePacked(getSvgPart[HEADER_TO_TEXT_START], _addressToString(to), getSvgPart[HEADER_TO_TEXT_END]);
    }

    /// @dev Get the body section
    /// @param strs Array of strs representing the message
    /// @return String representing the SVG part
    function _body(string[] memory strs) internal view returns (string memory) {
        bytes memory wrappedStrs;
        for (uint256 i = 0; i < strs.length; i++) {
            wrappedStrs = abi.encodePacked(
                wrappedStrs,
                '<tspan x="36" y="',
                Strings.toString(i * 25 + 100),
                '">',
                strs[i],
                "</tspan>"
            );
        }

        return
            string(
                abi.encodePacked(
                    getSvgPart[BODY_BACKGROUND],
                    getSvgPart[BODY_BEFORE],
                    wrappedStrs,
                    getSvgPart[BODY_AFTER]
                )
            );
    }

    /// @dev Get the vouch amount string
    /// @param amount The vouch amount
    /// @return String in the format "Vouch Amount: amount.00"
    function _vouchAmount(uint256 amount) internal view returns (string memory) {
        string memory fAmount = Strings.toString(amount / 1e18);
        return
            string(
                abi.encodePacked(
                    getSvgPart[VOUCH_AMOUNT_BEFORE],
                    "Vouch Amount: ",
                    fAmount,
                    ".00",
                    getSvgPart[VOUCH_AMOUNT_AFTER]
                )
            );
    }

    /// @dev Get the full SVG string base64 encoded
    /// @param to The address sending to
    /// @param to The address receiving
    /// @return Base64 encoded SVG string
    function _getSvgString(
        address to,
        address from,
        uint256 vouchAmount,
        string[] memory strs
    ) internal view returns (string memory) {
        return
            string(
                abi.encodePacked(
                    "data:image/svg+xml;base64,",
                    Base64.encode(
                        abi.encodePacked(
                            getSvgPart[START],
                            getSvgPart[WHITE_BACKGROUND],
                            _headerFrom(from),
                            _headerTo(to),
                            _body(strs),
                            _vouchAmount(vouchAmount),
                            getSvgPart[GREY_FOOTER],
                            getSvgPart[FOOTER_TEXT],
                            getSvgPart[UNION_LOGO],
                            getSvgPart[END]
                        )
                    )
                )
            );
    }

    /// ---------------------------------------------------------------------------
    /// Svg Public Functions
    /// ---------------------------------------------------------------------------

    /// @notice Set the SVG part based on the key
    /// @dev Only callable by the contract owner
    /// @dev Emits SetSvgPart event
    /// @param key Key hash
    /// @param str The string
    function setSvgPart(bytes32 key, string memory str) external onlyOwner {
        getSvgPart[key] = str;
        emit SetSvgPart(key, str);
    }

    /// @notice Preview the SVG
    /// @param to Address receiving the token
    /// @param from Address sending the token
    /// @param strs The message split into strings
    /// @return Base64 string of the SVG
    function previewSVG(
        address to,
        address from,
        uint256 vouchAmount,
        string[] memory strs
    ) external view returns (string memory) {
        return _getSvgString(to, from, vouchAmount, strs);
    }

    /// @notice Get the SVG of a token
    /// @param tokenId The token ID
    /// @return Base64 string of the SVG
    function getSVG(uint256 tokenId) external view returns (string memory) {
        return _parseSVG(tokenId);
    }

    function _parseName(uint256 tokenId) private view returns (string memory) {
        return string.concat(name(), "#", Strings.toString(tokenId));
    }

    function _parseSVG(uint256 tokenId) private view returns (string memory) {
        address to = ownerOf(tokenId);
        address from = getFrom[tokenId];
        string[] memory strs = getMessages[tokenId];
        uint256 vouchAmount = IUserManager(userManager).getVouchingAmount(from, to);

        return _getSvgString(to, from, vouchAmount, strs);
    }

    function _parseDescription(uint256 tokenId) private view returns (string memory) {
        return "";
    }

    function _parseAttributes(uint256 tokenId) private view returns (string memory) {
        address to = ownerOf(tokenId);
        address from = getFrom[tokenId];
        uint256 vouchAmount = IUserManager(userManager).getVouchingAmount(from, to);
        string memory fAmount = Strings.toString(vouchAmount / 1e18);
        string[] memory strs = getMessages[tokenId];
        bytes memory wrappedStrs;
        for (uint256 i = 0; i < strs.length; i++) {
            wrappedStrs = abi.encodePacked(wrappedStrs, strs[i]);
        }
        string memory message = string(abi.encodePacked(wrappedStrs));

        return
            string.concat(
                '{"trait_type":"From","value":',
                '"',
                Strings.toHexString(uint256(uint160(from)), 20),
                '"},',
                '{"trait_type":"To","value":',
                '"',
                Strings.toHexString(uint256(uint160(to)), 20),
                '"},',
                '{"trait_type":"Amount","value":',
                '"',
                fAmount,
                '"},',
                '{"trait_type":"Message","value":',
                '"',
                message,
                '"}'
            );
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            string.concat(
                                '{"name":',
                                '"',
                                _parseName(tokenId),
                                '",',
                                '"description":',
                                '"',
                                _parseDescription(tokenId),
                                '",',
                                '"image":',
                                '"',
                                _parseSVG(tokenId),
                                '",',
                                '"attributes": [',
                                _parseAttributes(tokenId),
                                "]}"
                            )
                        )
                    )
                )
            );
    }
}
