//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface IERC20 {
  function balanceOf(address account) external view returns (uint256);
}

interface IDaoChef {
  function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256, uint256);
}

interface IStaking {
    function totalBalance(address user) external view returns (uint256 amount);
}

interface IPool {
    function userInfo(address _user) external view returns (uint256, uint256, uint256, uint256);
}


interface IPancakePair {
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint256);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(address indexed sender, uint256 amount0, uint256 amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint256);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );

    function price0CumulativeLast() external view returns (uint256);

    function price1CumulativeLast() external view returns (uint256);

    function kLast() external view returns (uint256);

    function mint(address to) external returns (uint256 liquidity);

    function burn(address to) external returns (uint256 amount0, uint256 amount1);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function skim(address to) external;

    function sync() external;

    function initialize(address, address) external;
}

contract ShieldVotePower {

    constructor() {}

    address public constant SHIELD_TOKEN = 0xD9E90DF21F4229249E8841580cDE7048bF935710; // SHIELD token.
    address public constant DAO_CHEF = 0xd8d4bf1bcB9Db777188A20Ee458e9F560092644c; // masterchef.

    address public constant SHIELD_LP = 0xA976a4ba5076f1264e0f8fFB5b9ff4aC9Fd615fa; // shield lp.
    address public constant STAIKING = 0x36D7fa1C701aAA811F8736C40435C50Bb77BF843;

    address public constant POOL = 0xcc40896e6d0C8Dd93Bd9DFaF11118B338015EcD4;



    function getShieldBalance(address _user) public view returns (uint256) {
        return IERC20(SHIELD_TOKEN).balanceOf(_user);
    }

    function getShieldBnbLpBalance(address _user) public view returns (uint256) {
        uint256 totalSupplyLP = IPancakePair(SHIELD_LP).totalSupply();
        (, uint reserve1 , ) = IPancakePair(SHIELD_LP).getReserves();
        (uint256 amount,, ) = IDaoChef(DAO_CHEF).userInfo(1, _user);
        return (amount * reserve1) / totalSupplyLP;
    }

    function getStakedBalance(address _user) public view returns (uint256) {
            uint totalBal = IStaking(STAIKING).totalBalance(_user);
            return totalBal;
    }


    function getVotingPowerWithoutPool(address _user) public view returns (uint256) {
        return
            getShieldBalance(_user) +
            getShieldBnbLpBalance(_user) +
            getStakedBalance(_user);
    }



}