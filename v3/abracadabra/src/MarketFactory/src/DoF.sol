// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {LibClone} from "solady/utils/LibClone.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

interface IFriendtechSharesV1 {
    function sharesBalance(address sharesSubject, address sharesHolder) external view returns (uint256);

    function sharesSupply(address sharesSubject) external view returns (uint256);

    function getPrice(uint256 supply, uint256 amount) external pure returns (uint256);

    function getBuyPrice(address sharesSubject, uint256 amount) external view returns (uint256);

    function getSellPrice(address sharesSubject, uint256 amount) external view returns (uint256);

    function getBuyPriceAfterFee(address sharesSubject, uint256 amount) external view returns (uint256);

    function getSellPriceAfterFee(address sharesSubject, uint256 amount) external view returns (uint256);

    function buyShares(address sharesSubject, uint256 amount) external payable;

    function sellShares(address sharesSubject, uint256 amount) external payable;
}

contract Market is ERC20 {
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);

    error MarketAlreadyInitialized(address subject);

    IFriendtechSharesV1 public constant market = IFriendtechSharesV1(0xCF205808Ed36593aa40a44F10c7f7C2F67d4A4d4);

    address public subject;

    function init(address _subject) external {
        if(subject != address(0)) {
            revert MarketAlreadyInitialized(subject);
        }

        subject = _subject;
    }

    function name() public pure override returns (string memory) {
        return "Friend.tech Market";
    }

    function symbol() public pure override returns (string memory) {
        return "FriendToken";
    }

    function mint(address to, uint256 amount) external payable {
        market.buyShares{value: msg.value}(subject, amount);

        amount = amount * 10**decimals();
        _mint(to, amount);

        emit Mint(to, amount);
    }

    function burn(address from, uint256 amount) external {
        amount = amount / 10**decimals();
        _burn(from, amount);

        uint256 sellPrice = market.getSellPriceAfterFee(subject, amount);
        market.sellShares(subject, amount);

        SafeTransferLib.safeTransferETH(msg.sender, sellPrice);
        emit Burn(from, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override {}

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override {}
}

contract MarketFactory {
    event MarketCreated(Market indexed market);
    error MarketAlreadyExists(address subject, Market market);

    mapping(address subject => Market clone) public markets;
    Market public implementation;

    constructor(Market _implementation) {
        implementation = _implementation;
    }

    function create(address subject) external returns (Market market) {
        if (address(markets[subject]) != address(0)) {
            revert MarketAlreadyExists(subject, markets[subject]);
        }

        market = Market(LibClone.clone(address(implementation)));
        market.init(subject);
        markets[subject] = market;

        emit MarketCreated(market);
    }

    function get(address subject) external view returns (Market) {
        return markets[subject];
    }
}
