// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.4;

import {ciabv2erc20} from "./ciabv2erc20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {FixedPointMathLib} from "./FixedPointMathLib.sol";
import {Multicall} from "@openzeppelin/contracts/utils/Multicall.sol";

/// @notice Minimal ERC4626 tokenized Vault implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/mixins/ERC4626.sol)
contract mortgageconversionvault is ciabv2erc20, Multicall {
    
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    address public tickets; 
    address public mortgagePoolContract; // asset to convert to asset
    IERC20 public entryCoin;
    uint256 public lastInteraction;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Deposit(address indexed caller, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed caller,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /*//////////////////////////////////////////////////////////////
                               IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    IERC20 public immutable asset;
    

    constructor(
        IERC20 _asset,
        address _tickets,
        IERC20 _entryCoin,
        address _mortgagePoolContract,
        string memory _name,
        string memory _symbol

    ) ciabv2erc20(_name, _symbol, ERC20(address(_asset)).decimals()) {
        asset = _asset;
        tickets = _tickets;
        entryCoin = _entryCoin;
        mortgagePoolContract = _mortgagePoolContract;
    }

    /*//////////////////////////////////////////////////////////////
                        DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    function deposit(uint256 assets, address receiver) public  returns (uint256 shares) {
        doUpdate();
        // mint 1:1

        // Need to transfer before minting or ERC777s could reenter.
        entryCoin.safeTransferFrom(msg.sender, address(this), assets);

        shares = assets;

        _mint(receiver, assets);

        emit Deposit(msg.sender, receiver, assets, assets);

        afterDeposit(assets, shares, receiver);
    }

    function mint(uint256 shares, address receiver) public  returns (uint256 assets) {
        doUpdate();
        // Need to transfer before minting or ERC777s could reenter.
        entryCoin.safeTransferFrom(msg.sender, address(this), shares);

        assets = shares;

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);

        afterDeposit(assets, shares, receiver);
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address owner,
        uint256 _nftID
    ) public returns (uint256 shares) {
        shares = previewWithdraw(assets); // No need to check for rounding error, previewWithdraw rounds up.

        if (msg.sender != owner) {
            uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.

            if (allowed != type(uint256).max) allowance[owner][msg.sender] = allowed - shares;
        }

        beforeWithdraw(assets, shares, _nftID);

        _burn(owner, shares);

        emit Withdraw(msg.sender, receiver, owner, assets, shares);

        asset.safeTransfer(receiver, assets);
    }

    function redeem(
        uint256 shares,
        address receiver,
        address owner,
        uint256 _nftID
    ) public returns (uint256 assets) {
        if (msg.sender != owner) {
            uint256 allowed = allowance[owner][msg.sender]; // Saves gas for limited approvals.

            if (allowed != type(uint256).max) allowance[owner][msg.sender] = allowed - shares;
        }

        // Check for rounding error since we round down in previewRedeem.
        require((assets = previewRedeem(shares)) != 0, "ZERO_ASSETS");

        beforeWithdraw(assets, shares, _nftID);

        _burn(owner, shares);

        emit Withdraw(msg.sender, receiver, owner, assets, shares);

        asset.safeTransfer(receiver, assets);
    }
    function doUpdate() public{
    if(entryCoin.balanceOf(address(this)) > 0){
            // calculate size
            uint256 _size;
            if(block.timestamp - lastInteraction > 1 hours){
                _size = entryCoin.balanceOf(address(this));
            }
            if(block.timestamp - lastInteraction <= 1 hours){
                _size = entryCoin.balanceOf(address(this))* (block.timestamp - lastInteraction)/1 hours;
            }
            entryCoin.safeTransfer(mortgagePoolContract, _size);
        }
        lastInteraction = block.timestamp;
}
    /*//////////////////////////////////////////////////////////////
                            ACCOUNTING LOGIC
    //////////////////////////////////////////////////////////////*/

    function totalAssets() public view returns (uint256){
        return asset.balanceOf(address(this));
    }

    function convertToShares(uint256 assets) public view returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : assets.mulDivDown(supply, totalAssets());
    }

    function convertToAssets(uint256 shares) public view returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : shares.mulDivDown(totalAssets(), supply);
    }

    function previewDeposit(uint256 assets) public view returns (uint256) {
        return convertToShares(assets);
    }

    function previewMint(uint256 shares) public view returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? shares : shares.mulDivUp(totalAssets(), supply);
    }

    function previewWithdraw(uint256 assets) public view returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? assets : assets.mulDivUp(supply, totalAssets());
    }

    function previewRedeem(uint256 shares) public view returns (uint256) {
        return convertToAssets(shares);
    }

    /*//////////////////////////////////////////////////////////////
                     DEPOSIT/WITHDRAWAL LIMIT LOGIC
    //////////////////////////////////////////////////////////////*/

    function maxDeposit(address) public view returns (uint256) {
        return type(uint256).max;
    }

    function maxMint(address) public view returns (uint256) {
        return type(uint256).max;
    }

    function maxWithdraw(address owner) public view returns (uint256) {
        return convertToAssets(balanceOf[owner]);
    }

    function maxRedeem(address owner) public view returns (uint256) {
        return balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                          INTERNAL HOOKS LOGIC
    //////////////////////////////////////////////////////////////*/

    function beforeWithdraw(uint256 assets, uint256 shares, uint256 nftID) internal {
        // burn nft ticket/or partially
        require(Itickets(tickets).ownerOf(nftID) == msg.sender,"not owner");
        uint256 _result = Itickets(tickets).use(nftID, shares);
        require(_result >= shares,"overdrafting ticket");        
    }

    function afterDeposit(uint256 assets, uint256 shares, address receiver) internal {
        // mint nft ticket
         Itickets(tickets).mint(receiver, shares);
    }
}

interface Itickets {
    function use(uint256 _nftID, uint256 _size) external returns (uint256);
    function mint(address to, uint256 _size)external;
    function ownerOf(uint256 tokenId)external returns (address);
}

interface Iciab {
    function deposit(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function mint(uint256 amount) external;
    function repay(uint256 amount) external;
    function Owing(address _depositor) external view returns(uint256 _allocation);
    function deposited(address _depositor) external pure returns(uint256 _deposit);
    function debt(address _depositor) external pure returns(uint256 _debt);
}