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
import {VariableRate} from "../VariableRate.sol";

contract VariableRateNFT is ERC721, ReentrancyGuard, Multicall, BlastManager {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;

    /* Variables */
    uint256 private _tokenId;

    /* Storage */
    mapping(uint256 => address) public variableRateContracts;

    /* Events */
    event Mint(address user, uint256 id, address variableRateContract, uint256 amount);
    event Burn(address user, uint256 id, uint256 amount, uint256 yield, uint256 positionFee);
    event Withdraw(address user, uint256 id, uint256 amount);

    constructor(address token, address vault, string memory name, string memory symbol) ERC721(name, symbol) {
        TOKEN = token;
        VAULT = vault;
    }

    function mint(uint256 amount) external nonReentrant returns (uint256 id, address variableRateContract) {
        // transfer in the amount
        IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), amount);

        // approve the vault spending to only the amount
        IERC20(TOKEN).approve(VAULT, amount);

        // mint
        variableRateContract = IVault(VAULT).mintVariableRate(amount, address(this));

        // approve the vault spending back to zero
        IERC20(TOKEN).approve(VAULT, 0);

        // mint the NFT id
        id = _tokenId++;
        variableRateContracts[id] = variableRateContract;
        _safeMint(msg.sender, id);

        emit Mint(msg.sender, id, variableRateContract, amount);
    }

    function burn(
        uint256 tokenId,
        uint256 amount,
        uint256 minYield
    ) external nonReentrant onlyOwner(tokenId) returns (uint256 yield, uint256 fee) {
        uint256 balanceBefore = IERC20(TOKEN).balanceOf(address(this));
        (yield, fee) = VariableRate(variableRateContracts[tokenId]).burn(amount, minYield);
        require(
            IERC20(TOKEN).balanceOf(address(this)) == balanceBefore + amount + yield + fee,
            "VariableRate: insufficient fund"
        );
        IYieldStrippedToken(TOKEN).unwrapTo(amount + yield + fee, msg.sender);
        emit Burn(msg.sender, tokenId, amount, yield, fee);
    }

    function withdraw(uint256 tokenId, uint256 amount) external nonReentrant onlyOwner(tokenId) {
        uint256 balanceBefore = IERC20(TOKEN).balanceOf(address(this));
        VariableRate(variableRateContracts[tokenId]).withdraw(amount);
        require(IERC20(TOKEN).balanceOf(address(this)) == balanceBefore + amount, "VariableRate: insufficient fund");
        IERC20(TOKEN).safeTransfer(msg.sender, amount);
        emit Withdraw(msg.sender, tokenId, amount);
    }

    modifier onlyOwner(uint256 tokenId) {
        require(msg.sender == ownerOf(tokenId), "VariableRate: not owner");
        _;
    }
}
