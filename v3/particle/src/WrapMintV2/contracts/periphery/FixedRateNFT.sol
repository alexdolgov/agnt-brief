// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC721} from "../../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IYieldStrippedToken} from "../interfaces/IYieldStrippedToken.sol";
import {BlastManager} from "../libraries/BlastManager.sol";
import {FixedRate} from "../FixedRate.sol";

contract FixedRateNFT is ERC721, ReentrancyGuard, Multicall, BlastManager {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;

    /* Storage */
    mapping(uint256 => address) public fixedRateContracts;

    /* Events */
    event Mint(
        address indexed user,
        uint256 id,
        address indexed fixedRateContract,
        uint256 lockedYield,
        uint256 maturityTimestamp);
    event Burn(address indexed user, uint256 id, uint256 amount, uint256 yieldToUnlock, uint256 yieldToRelease);
    event Withdraw(address indexed user, uint256 id, uint256 amount);

    constructor(address token, address vault, string memory name, string memory symbol) ERC721(name, symbol) {
        TOKEN = token;
        VAULT = vault;
    }

    function mint(
        uint256 amount,
        uint256 minLockedYield
    )
        external
        nonReentrant
        returns (uint256 id, address fixedRateContract, uint256 lockedYield, uint256 maturityTimestamp)
    {
        // transfer in the amount
        IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), amount);

        // approve the vault spending to only the amount
        IERC20(TOKEN).approve(VAULT, amount);

        // mint
        (fixedRateContract, lockedYield, maturityTimestamp) = IVault(VAULT).mintFixedRate(
            amount,
            minLockedYield,
            address(this)
        );

        // approve the vault spending back to zero
        IERC20(TOKEN).approve(VAULT, 0);

        // mint the NFT id
        id = FixedRate(fixedRateContract).id();
        fixedRateContracts[id] = fixedRateContract;
        _safeMint(msg.sender, id);

        emit Mint(msg.sender, id, fixedRateContract, lockedYield, maturityTimestamp);
    }

    function burn(
        uint256 tokenId,
        uint256 amount
    ) external nonReentrant onlyOwner(tokenId) returns (uint256 yieldToUnlock, uint256 yieldToRelease) {
        uint256 balanceBefore = IERC20(TOKEN).balanceOf(address(this));
        (yieldToUnlock, yieldToRelease) = FixedRate(fixedRateContracts[tokenId]).burn(amount);
        require(
            IERC20(TOKEN).balanceOf(address(this)) == balanceBefore + amount + yieldToRelease,
            "FixedRateNFT: insufficient fund"
        );
        IYieldStrippedToken(TOKEN).unwrapTo(amount + yieldToRelease, msg.sender);
        emit Burn(msg.sender, tokenId, amount, yieldToUnlock, yieldToRelease);
    }

    function withdraw(uint256 tokenId, uint256 amount) external nonReentrant onlyOwner(tokenId) {
        uint256 balanceBefore = IERC20(TOKEN).balanceOf(address(this));
        FixedRate(fixedRateContracts[tokenId]).withdraw(amount);
        require(IERC20(TOKEN).balanceOf(address(this)) == balanceBefore + amount, "FixedRateNFT: insufficient fund");
        IERC20(TOKEN).safeTransfer(msg.sender, amount);
        emit Withdraw(msg.sender, tokenId, amount);
    }

    modifier onlyOwner(uint256 tokenId) {
        require(msg.sender == ownerOf(tokenId), "FixedRateNFT: not owner");
        _;
    }
}
