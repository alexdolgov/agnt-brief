// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC4626, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {OwnableRoles} from "solady/auth/OwnableRoles.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IPriceFeed} from "../interfaces/IPriceFeed.sol";

contract Vault is ERC4626, OwnableRoles, IVault {
    using FixedPointMathLib for uint256;

    uint256 public constant MINTER_ROLE = _ROLE_0;
    uint256 public constant BURNER_ROLE = _ROLE_1;
    uint256 public constant TAKER_ROLE = _ROLE_2;

    IPriceFeed public priceFeed;

    uint8 _assetDecimalOffset;

    event Take(address indexed to, uint256 amount);
    event NewPriceFeed(address oldPriceFeed, address newPriceFeed);

    constructor(address _asset, address _priceFeed) ERC4626(ERC20(_asset)) ERC20("", "") {
        _initializeOwner(msg.sender);
        priceFeed = IPriceFeed(_priceFeed);
        // We assume that all assets we are going to use have at most 18 decimals
        _assetDecimalOffset = 18 - ERC20(_asset).decimals();

        // Check that the oracle works
        IPriceFeed(_priceFeed).fetchPrice();
    }

    function setPriceFeed(address _newPriceFeed) external onlyOwner {
        emit NewPriceFeed(address(priceFeed), _newPriceFeed);

        priceFeed = IPriceFeed(_newPriceFeed);
    }

    function grantRoles(address _to, uint256 _roles) public payable override(IVault, OwnableRoles) {
        OwnableRoles.grantRoles(_to, _roles);
    }

    function assetPrice() public view returns (uint256) {
        return priceFeed.fetchPrice();
    }

    function sharePrice() external view returns (uint256) {
        uint256 assets = convertToAssets(1e18) * (10 ** _assetDecimalOffset); // 18 decimals
        return assets.mulWad(assetPrice());
    }

    function take(address _to, uint256 _amount) external onlyRoles(TAKER_ROLE) {
        ERC20(asset()).transfer(_to, _amount);

        emit Take(_to, _amount);
    }

    function _deposit(address _caller, address _receiver, uint256 _assets, uint256 _shares)
        internal
        override
        onlyRoles(MINTER_ROLE)
    {
        super._deposit(_caller, _receiver, _assets, _shares);
    }

    function _withdraw(address _caller, address _receiver, address _owner, uint256 _assets, uint256 _shares)
        internal
        override
        onlyRoles(BURNER_ROLE)
    {
        super._withdraw(_caller, _receiver, _owner, _assets, _shares);
    }

    function _decimalsOffset() internal view override returns (uint8) {
        return _assetDecimalOffset;
    }
}
