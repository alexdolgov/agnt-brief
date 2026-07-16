// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "../utils/NominatedOwnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

import "../interfaces/internal/IStableQiVault.sol";

interface GDAY {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint256);
    function shareToAssetsPrice() external view returns (uint256);
    function deposit(uint assets, address receiver) external returns (uint);
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool); 
}

interface pToken {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function enter(uint256 amount) external;
    function leave(uint256 share) external;
}

contract gainsZapper is NominatedOwnable(msg.sender), Pausable, IERC721Receiver {

    constructor(address _asset, address _amAsset, address _camAsset, address _camAssetVault) {
        GChain memory chain = _buildGChain(_asset, _amAsset, _camAsset, _camAssetVault);

        _chainWhiteList[_hashGChain(chain)] = chain;
    }

    struct GChain {
        IERC20 asset; // DAI
        GDAY amToken; // gDAI
        pToken _pToken; // perf gDAI
        IStableQiVault pTokenVault; // perf gDAI vault
    }

    mapping (bytes32 => GChain) private _chainWhiteList;

    event AssetZapped(address indexed asset, uint256 indexed amount, uint256 vaultId);
    event AssetUnZapped(address indexed asset, uint256 indexed amount, uint256 vaultId);

    function _gainsZapToVault(uint256 amount, uint256 vaultId, GChain memory chain) internal whenNotPaused returns (uint256) {
        require(amount > 0, "You need to deposit at least some tokens");

        uint256 allowance = chain.asset.allowance(msg.sender, address(this));
        require(allowance >= amount, "Check the token allowance");

        chain.asset.transferFrom(msg.sender, address(this), amount);
        chain.asset.approve(address(chain.amToken), amount);

        chain.amToken.deposit(amount, address(this));

        chain.amToken.approve(address(chain._pToken), amount);
        
        uint256 amTokenBal = chain.amToken.balanceOf(address(this));

        chain._pToken.enter(amTokenBal);
        uint256 pTokenBal = chain._pToken.balanceOf(address(this));

        if(vaultId == 0){
            chain.asset.transferFrom(address(this), msg.sender, pTokenBal);
            emit AssetZapped(address(chain.asset), amount, vaultId);
        } else {
            chain._pToken.approve(address(chain.pTokenVault), pTokenBal);
            chain.pTokenVault.depositCollateral(vaultId, pTokenBal);
            emit AssetZapped(address(chain.asset), amount, vaultId);
        }

        return pTokenBal;
    }

    function _gainsZapFromVault(uint256 amount, uint256 vaultId, GChain memory chain) internal whenNotPaused returns (uint256) {
        require(amount > 0, "You need to withdraw at least some tokens");
        require(chain.pTokenVault.getApproved(vaultId) == address(this), "Need to have approval");
        require(chain.pTokenVault.ownerOf(vaultId) == msg.sender, "You can only zap out of vaults you own");

        chain._pToken.approve(address(chain.pTokenVault), amount);
        chain.pTokenVault.safeTransferFrom(msg.sender, address(this), vaultId);

        uint256 pTokenBalanceBeforeWithdraw = chain._pToken.balanceOf(address(this));
        chain.pTokenVault.withdrawCollateral(vaultId, amount);
        uint256 pTokenBalanceToUnzap = chain._pToken.balanceOf(address(this)) - (pTokenBalanceBeforeWithdraw);

        chain.pTokenVault.approve(msg.sender, vaultId);
        chain.pTokenVault.safeTransferFrom(address(this), msg.sender, vaultId);

        uint256 amTokenBalanceBeforeWithdraw = chain.amToken.balanceOf(address(this));
        chain._pToken.leave(pTokenBalanceToUnzap);
        uint256 amTokenBalanceToUnzap = chain.amToken.balanceOf(address(this)) - (amTokenBalanceBeforeWithdraw);

        chain.amToken.transfer(msg.sender, amTokenBalanceToUnzap);
        // send gDAI to user cause we don't wait for unlock

        emit AssetUnZapped(address(chain.asset), amount, vaultId);
        return chain.amToken.balanceOf(msg.sender);
    }

    function _buildGChain(address _asset, address _amAsset, address _camAsset, address _camAssetVault) internal returns (GChain memory){
        GChain memory chain;
        chain.asset = IERC20(_asset);
        chain.amToken = GDAY(_amAsset);
        chain._pToken = pToken(_camAsset);
        chain.pTokenVault = IStableQiVault(_camAssetVault);
        return chain;
    }

    function _hashGChain(GChain memory chain) internal returns (bytes32){
        return keccak256(
            abi.encodePacked(address(chain.asset), address(chain.amToken), address(chain._pToken), address(chain.pTokenVault)));
    }

    function isWhiteListed(GChain memory chain) public returns (bool){
        return address(_chainWhiteList[_hashGChain(chain)].asset) != address(0x0);
    }

    function addChainToWhiteList(address _asset, address _amAsset, address _camAsset, address _camAssetVault) public onlyOwner {
        GChain memory chain = _buildGChain(_asset, _amAsset, _camAsset, _camAssetVault);
        if(!isWhiteListed(chain)){
            _chainWhiteList[_hashGChain(chain)] = chain;
        } else {
            revert("Chain already in White List");
        }
    }

    function removeChainFromWhiteList(address _asset, address _amAsset, address _camAsset, address _camAssetVault) public onlyOwner {
        GChain memory chain = _buildGChain(_asset, _amAsset, _camAsset, _camAssetVault);

        if(isWhiteListed(chain)){
            delete _chainWhiteList[_hashGChain(chain)];
        } else {
            revert("Chain not in white List");
        }
    }

    function pauseZapping() public onlyOwner {
        _pause();
    }

    function resumeZapping() public onlyOwner {
        _unpause();
    }

    function gainsZapToVault(uint256 amount, uint256 vaultId, address _asset, address _amAsset, address _camAsset, address _camAssetVault) public whenNotPaused returns (uint256) {
        GChain memory chain = _buildGChain(_asset, _amAsset, _camAsset, _camAssetVault);
        require(isWhiteListed(chain), "pToken chain not in on allowable list");
        return _gainsZapToVault(amount, vaultId, chain);
    }

    function gainsZapFromVault(uint256 amount, uint256 vaultId, address _asset, address _amAsset, address _camAsset, address _camAssetVault) public whenNotPaused returns (uint256) {
        GChain memory chain = _buildGChain(_asset, _amAsset, _camAsset, _camAssetVault);
        require(isWhiteListed(chain), "pToken chain not in on allowable list");
        return _gainsZapFromVault(amount, vaultId, chain);
    }

    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data) public returns (bytes4) {
        return this.onERC721Received.selector;
    }
}