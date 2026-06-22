// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IAddressesProvider} from "../../interfaces/IAddressesProvider.sol";
import {Upgradeable} from "../../libraries/Upgradeable.sol";
import {IEmiter} from "../interfaces/IEmiter.sol";
import {IReleaseLocker} from "../interfaces/IReleaseLocker.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {IERC721Metadata} from "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {StakeErrors} from "./StakeErrors.sol";

contract ReleaseLockerV2 is Context, ERC165, ReentrancyGuard, Pausable, Upgradeable, IERC721, IERC721Metadata, IReleaseLocker {
    using SafeERC20 for IERC20;
    using Address for address;
    using Strings for uint256;

    string private _name;
    string private _symbol;
    mapping(uint256 => address) private _owners;
    mapping(address => uint256) private _balances;
    mapping(address => uint256[]) private _ownedTokens;
    mapping(uint256 => uint256) private _ownedTokensIndex;

    uint256 public nextTokenId;

    mapping(uint256 tokenId => ReleaseData) public releaseData;

    address public myx;
    address public staker;
    address public emiter;

    modifier onlyStaker() {
        require(_msgSender() == staker, "ReleaseLocker: caller is not staker");
        _;
    }

    function initializeV2(
        IAddressesProvider addressProvider,
        address _myx,
        address _staker,
        address _emiter
    ) public reinitializer(2) {
        ADDRESS_PROVIDER = addressProvider;
        myx = _myx;
        staker = _staker;
        emiter = _emiter;
        _name = "MYX Stake Release Locker";
        _symbol = "veMYX";
    }

    function initializeV3() public reinitializer(3) {}

    function setPaused() external onlyPoolAdmin {
        _pause();
    }

    function setUnPaused() external onlyPoolAdmin {
        _unpause();
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC165, IERC165) returns (bool) {
        return
            interfaceId == type(IERC721).interfaceId ||
            interfaceId == type(IERC721Metadata).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function balanceOf(address owner) public view override returns (uint256) {
        require(owner != address(0), "ERC721: address zero is not a valid owner");
        return _balances[owner];
    }

    function ownerOf(uint256 tokenId) public view override returns (address) {
        address owner = _ownerOf(tokenId);
        require(owner != address(0), "ERC721: invalid token ID");
        return owner;
    }

    function tokenOfOwnerByIndex(address owner, uint256 index) public view returns (uint256) {
        require(index < _ownedTokens[owner].length, "Index out of bounds");
        return _ownedTokens[owner][index];
    }

    function getTokensOfOwner(address owner) public view returns (uint256[] memory) {
        return _ownedTokens[owner];
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireMinted(tokenId);
        return string(
            abi.encodePacked(
                'data:application/json;base64,',
                'eyJuYW1lIjogIk1ZWCBTdGFrZSBSZWxlYXNlIExvY2tlciIsICJkZXNjcmlwdGlvbiI6ICJNWU',
                '4gU3Rha2UgUmVsZWFzZSBMb2NrZXIgTkZUIHJlcHJlc2VudHMgbG9ja2VkIE1ZWCBzdGFrZXMifQ=='
            )
        );
    }

    function getReleaseData(uint256 tokenId) external view returns (ReleaseData memory) {
        return releaseData[tokenId];
    }

    function isClaimable(uint256 tokenId) public view returns (bool) {
        if (!_exists(tokenId)) return false;
        ReleaseData memory data = releaseData[tokenId];
        return data.amount > 0 && block.timestamp >= data.releaseTime;
    }

    function getRemainingTimes(uint256 tokenId) public view returns (uint256) {
        require(_exists(tokenId), "Token does not exist");
        ReleaseData memory data = releaseData[tokenId];
        if (block.timestamp >= data.releaseTime) return 0;
        return data.releaseTime - block.timestamp;
    }

    function release(
        address validator,
        uint256 amount,
        uint256 lockDuration,
        address recipient
    ) external onlyStaker whenNotPaused nonReentrant returns (uint256 tokenId) {
        IERC20(myx).safeTransferFrom(_msgSender(), address(this), amount);

        tokenId = nextTokenId + 1;
        nextTokenId = tokenId;

        releaseData[tokenId] = ReleaseData({
            releaseTime: block.timestamp + lockDuration,
            lockDuration: lockDuration,
            amount: amount
        });

        _safeMint(recipient, tokenId);

        IEmiter(emiter).emitStakeReleasing(validator, amount, lockDuration, recipient, tokenId);
    }

    function batchClaim(uint256[] calldata tokenIds, address recipient) external whenNotPaused nonReentrant {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            _claim(tokenIds[i], recipient);
        }
    }

    function claim(uint256 tokenId, address recipient) external whenNotPaused nonReentrant {
        _claim(tokenId, recipient);
    }

    function _claim(uint256 tokenId, address recipient) internal {
        _requireMinted(tokenId);
        require(_ownerOf(tokenId) == _msgSender(), "ReleaseLocker: Not owner");

        ReleaseData memory data = releaseData[tokenId];
        require(data.amount > 0, "ReleaseLocker: Already claimed");
        require(block.timestamp >= data.releaseTime, "ReleaseLocker: Not released yet");

        // Clear release data
        uint256 amount = data.amount;
        delete releaseData[tokenId];

        // Burn the NFT
        _burn(tokenId);

        // Transfer tokens to recipient
        IERC20(myx).safeTransfer(recipient, amount);

        IEmiter(emiter).emitStakeClaimed(tokenId, amount, recipient);
    }

    function approve(address /*to*/, uint256 /*tokenId*/) external override {revert("disabled");}

    function getApproved(uint256 /*tokenId*/) external pure override returns (address) {revert("disabled");}

    function setApprovalForAll(address /*operator*/, bool /*approved*/) external override {revert("disabled");}

    function isApprovedForAll(address /*owner*/, address /*operator*/) external pure override returns (bool) {revert("disabled");}

    function transferFrom(address /*from*/, address /*to*/, uint256 /*tokenId*/) external override {revert("disabled");}

    function safeTransferFrom(address /*from*/, address /*to*/, uint256 /*tokenId*/) external override {revert("disabled");}

    function safeTransferFrom(address /*from*/, address /*to*/, uint256 /*tokenId*/, bytes memory /*data*/) external override {revert("disabled");}

    function _ownerOf(uint256 tokenId) internal view returns (address) {
        return _owners[tokenId];
    }

    function _exists(uint256 tokenId) internal view returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    function _safeMint(address to, uint256 tokenId) internal {
        _safeMint(to, tokenId, "");
    }

    function _safeMint(address to, uint256 tokenId, bytes memory data) internal {
        _mint(to, tokenId);
        require(
            _checkOnERC721Received(address(0), to, tokenId, data),
            "ERC721: transfer to non ERC721Receiver implementer"
        );
    }

    function _mint(address to, uint256 tokenId) internal {
        require(to != address(0), "ERC721: mint to the zero address");
        require(!_exists(tokenId), "ERC721: token already minted");

        unchecked {
            _balances[to] += 1;
        }

        _owners[tokenId] = to;

        // Add token to owner's array and update index
        _ownedTokens[to].push(tokenId);
        _ownedTokensIndex[tokenId] = _ownedTokens[to].length - 1;

        emit Transfer(address(0), to, tokenId);
    }

    function _burn(uint256 tokenId) internal {
        address owner = ownerOf(tokenId);

        unchecked {
            _balances[owner] -= 1;
        }

        // Remove token from owner's array
        uint256 lastTokenIndex = _ownedTokens[owner].length - 1;
        uint256 tokenIndex = _ownedTokensIndex[tokenId];

        if (tokenIndex != lastTokenIndex) {
            uint256 lastTokenId = _ownedTokens[owner][lastTokenIndex];
            _ownedTokens[owner][tokenIndex] = lastTokenId;
            _ownedTokensIndex[lastTokenId] = tokenIndex;
        }

        _ownedTokens[owner].pop();
        delete _ownedTokensIndex[tokenId];
        delete _owners[tokenId];

        emit Transfer(owner, address(0), tokenId);
    }

    function _requireMinted(uint256 tokenId) internal view {
        require(_exists(tokenId), "ERC721: invalid token ID");
    }

    function _checkOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) private returns (bool) {
        if (to.isContract()) {
            try IERC721Receiver(to).onERC721Received(_msgSender(), from, tokenId, data) returns (bytes4 retval) {
                return retval == IERC721Receiver.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert("ERC721: transfer to non ERC721Receiver implementer");
                } else {
                    /// @solidity memory-safe-assembly
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        }
        return true;
    }
}
