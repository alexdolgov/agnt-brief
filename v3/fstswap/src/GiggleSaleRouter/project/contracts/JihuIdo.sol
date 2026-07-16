// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IERC721Receiver {
    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns (bytes4);
}

/// @notice 合伙人募集：打入 ≥1 BNB 即铸造 1 枚 SuperVIP NFT（无上限，多余不退）。
contract JihuIdo {
    string public constant name = "SuperVIP";
    string public constant symbol = "SVIP";
    string public constant BASE_URI = "https://giggle.sale/uploads/2026/02/02/5e31c707-f6d2-4ce1-b7d0-6b795dece723.png";

    uint256 public constant PRICE_WEI = 1 ether; // 固定 1 BNB

    uint256 public totalMinted;
    uint256 public totalRaisedWei;

    address public constant feeReceiverA = 0x2df3658756F38e5416bAc889Fecc837e4AD06a08;
    address public constant feeReceiverB = 0x6C38fA7ad1F2AADe40049aCcE7729F43F101a0b7;
    uint16 public constant FEE_DENOMINATOR = 10_000;
    uint16 public constant FEE_SPLIT_A_BPS = 3_333; // 1/3 to A, 2/3 to B

    mapping(address => uint256) public contributionOf;

    mapping(uint256 => address) private _ownerOf;
    mapping(address => uint256) private _balanceOf;
    mapping(uint256 => address) private _tokenApprovals;
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    event PartnerJoined(address indexed buyer, uint256 valueWei, uint256 tokenId);

    error InvalidTo();
    error NotOwner();
    error NotApproved();
    error InvalidToken();
    error InsufficientPayment();

    receive() external payable {
        join();
    }

    /// @notice 打入 ≥1 BNB 即铸造 1 枚 SuperVIP NFT（多余不退）
    function join() public payable {
        if (msg.value < PRICE_WEI) revert InsufficientPayment();
        totalRaisedWei += msg.value;
        contributionOf[msg.sender] += msg.value;
        _distributeFee(msg.value);
        uint256 tokenId = _mint(msg.sender);
        emit PartnerJoined(msg.sender, msg.value, tokenId);
    }

    function balanceOf(address owner) public view returns (uint256) {
        if (owner == address(0)) revert InvalidTo();
        return _balanceOf[owner];
    }

    function ownerOf(uint256 tokenId) public view returns (address) {
        address owner = _ownerOf[tokenId];
        if (owner == address(0)) revert InvalidToken();
        return owner;
    }

    function tokenURI(uint256 tokenId) public view returns (string memory) {
        if (_ownerOf[tokenId] == address(0)) revert InvalidToken();
        return BASE_URI;
    }

    function approve(address to, uint256 tokenId) external {
        address owner = ownerOf(tokenId);
        if (msg.sender != owner && !_operatorApprovals[owner][msg.sender]) revert NotApproved();
        _tokenApprovals[tokenId] = to;
        emit Approval(owner, to, tokenId);
    }

    function getApproved(uint256 tokenId) external view returns (address) {
        if (_ownerOf[tokenId] == address(0)) revert InvalidToken();
        return _tokenApprovals[tokenId];
    }

    function setApprovalForAll(address operator, bool approved) external {
        _operatorApprovals[msg.sender][operator] = approved;
        emit ApprovalForAll(msg.sender, operator, approved);
    }

    function isApprovedForAll(address owner, address operator) external view returns (bool) {
        return _operatorApprovals[owner][operator];
    }

    function transferFrom(address from, address to, uint256 tokenId) public {
        address owner = ownerOf(tokenId);
        if (owner != from) revert NotOwner();
        if (to == address(0)) revert InvalidTo();
        if (
            msg.sender != owner &&
            msg.sender != _tokenApprovals[tokenId] &&
            !_operatorApprovals[owner][msg.sender]
        ) {
            revert NotApproved();
        }
        _approve(address(0), tokenId, owner);
        _balanceOf[from] -= 1;
        _balanceOf[to] += 1;
        _ownerOf[tokenId] = to;
        emit Transfer(from, to, tokenId);
    }

    function safeTransferFrom(address from, address to, uint256 tokenId) external {
        safeTransferFrom(from, to, tokenId, "");
    }

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public {
        transferFrom(from, to, tokenId);
        if (to.code.length > 0) {
            bytes4 retval = IERC721Receiver(to).onERC721Received(msg.sender, from, tokenId, data);
            require(retval == IERC721Receiver.onERC721Received.selector, "UNSAFE_RECIPIENT");
        }
    }

    function _distributeFee(uint256 amount) internal {
        if (amount == 0) return;
        uint256 feeA = (amount * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR;
        uint256 feeB = amount - feeA;
        if (feeA > 0) {
            (bool okA, ) = feeReceiverA.call{ value: feeA }("");
            require(okA, "BNB_TRANSFER_FAIL_A");
        }
        if (feeB > 0) {
            (bool okB, ) = feeReceiverB.call{ value: feeB }("");
            require(okB, "BNB_TRANSFER_FAIL_B");
        }
    }

    function _mint(address to) internal returns (uint256 tokenId) {
        if (to == address(0)) revert InvalidTo();
        tokenId = ++totalMinted;
        _ownerOf[tokenId] = to;
        _balanceOf[to] += 1;
        emit Transfer(address(0), to, tokenId);
    }

    function _approve(address to, uint256 tokenId, address owner) internal {
        _tokenApprovals[tokenId] = to;
        emit Approval(owner, to, tokenId);
    }
}
