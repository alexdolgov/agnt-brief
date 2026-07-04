// SPDX-License-Identifier: GPL-3.0
// Authored by Plastic Digits
pragma solidity >=0.8.19;

import "openzeppelin/access/AccessControlEnumerable.sol";
import "openzeppelin/token/ERC20/presets/ERC20PresetFixedSupply.sol";
import "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import "./libs/AmmLibrary.sol";
import "./interfaces/IAmmFactory.sol";
import "./interfaces/IAmmPair.sol";

contract DogeDemon is AccessControlEnumerable, ERC20PresetFixedSupply {
    using SafeERC20 for IERC20;
    mapping(address => bool) public isExempt;
    mapping(address => bool) public isWhitelist;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    IAmmPair public ammCzusdPair;

    uint256 constant _BASIS = 10000;

    uint256 public buyTax = 100;
    uint256 public buyBurn = 0;
    uint256 public sellTax = 300;
    uint256 public sellBurn = 100;
    uint256 public tfrTax = 100;
    uint256 public tfrBurn = 0;

    uint public constant MAX_TAX = 3000;

    address public dogeWorldWallet =
        address(0xD91129bEbcC9e8A8E5Bf55dC3fA20361544B1C2D);

    bool public tradingOpen;

    constructor()
        ERC20PresetFixedSupply(
            "DogeDemon",
            "DOGED",
            666_000_000_000 ether,
            msg.sender
        )
    {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, dogeWorldWallet);

        isExempt[msg.sender] = true;
        isExempt[address(this)] = true;
        isExempt[dogeWorldWallet] = true;

        ammCzusdPair = IAmmPair(
            IAmmFactory(0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73).createPair(
                address(this),
                address(0xE68b79e51bf826534Ff37AA9CeE71a3842ee9c70)
            )
        );
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal override {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(
            tradingOpen || isWhitelist[recipient],
            "Public trading not open"
        );

        uint256 taxWad;
        uint256 burnWad;

        if (
            //No tax for exempt
            isExempt[sender] || isExempt[recipient]
        ) {
            //do nothing
        } else if (sender == address(ammCzusdPair)) {
            //buy taxes
            taxWad = (amount * buyTax) / _BASIS;
            burnWad = (amount * buyBurn) / _BASIS;
        } else if (recipient == address(ammCzusdPair)) {
            //sell taxes
            taxWad = (amount * sellTax) / _BASIS;
            burnWad = (amount * sellBurn) / _BASIS;
        } else {
            //transfer taxes
            taxWad = (amount * tfrTax) / _BASIS;
            burnWad = (amount * tfrBurn) / _BASIS;
        }

        if (taxWad > 0) super._transfer(sender, dogeWorldWallet, taxWad);

        if (burnWad > 0) super._burn(sender, burnWad);

        super._transfer(sender, recipient, amount - burnWad - taxWad);
    }

    function setIsExempt(address _for, bool _to) public onlyRole(MANAGER_ROLE) {
        isExempt[_for] = _to;
    }

    function setIsWhitelistMulti(
        address[] calldata _fors,
        bool _to
    ) external onlyRole(MANAGER_ROLE) {
        for (uint i; i < _fors.length; i++) {
            isWhitelist[_fors[i]] = _to;
        }
    }

    function setIsWhitelist(
        address _for,
        bool _to
    ) external onlyRole(MANAGER_ROLE) {
        isWhitelist[_for] = _to;
    }

    function openPublicTrading() external onlyRole(MANAGER_ROLE) {
        tradingOpen = true;
    }

    function setTaxes(
        uint256 _buyTax,
        uint256 _buyBurn,
        uint256 _sellTax,
        uint256 _sellBurn,
        uint256 _tfrTax,
        uint256 _tfrBurn
    ) external onlyRole(MANAGER_ROLE) {
        require(
            _buyTax + _buyBurn + _sellTax + _sellBurn + _tfrTax + _tfrBurn <
                MAX_TAX,
            "Cannot set taxes higher than MAX_TAX"
        );
        buyTax = _buyTax;
        buyBurn = _buyBurn;
        sellTax = _sellTax;
        sellBurn = _sellBurn;
        tfrTax = _tfrTax;
        tfrBurn = _tfrBurn;
    }

    function setDogeWorldWallet(address _to) external onlyRole(MANAGER_ROLE) {
        setIsExempt(dogeWorldWallet, false);
        setIsExempt(_to, true);
        dogeWorldWallet = _to;
    }

    function setAmmPair(IAmmPair _to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ammCzusdPair = _to;
    }

    function recoverERC20(
        address tokenAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(tokenAddress).safeTransfer(
            _msgSender(),
            IERC20(tokenAddress).balanceOf(address(this))
        );
    }
}
