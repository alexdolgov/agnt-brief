pragma solidity ^0.8.0;


interface IToken {

    function totalSupply() external view returns (uint);

    function balanceOf(address owner) external view returns (uint);

    function transfer(address to, uint value) external returns (bool);

    function transferFrom(address from, address to, uint value) external returns (bool);

    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);

    function token0() external view returns (address);

    function token1() external view returns (address);
}

interface IStake {
    function property() external view returns (address property);

    function accountState(address account) external view returns (uint share, uint accruedIndex, uint accruedAmount);
}

contract FILSTUtils {

    IToken filst;
    IToken efil_filst_lp;
    IToken filst_usdt_lp;
    IToken cFILST;
    IStake efil_filst_lp_stake;
    IStake filst_usdt_lp_stake;
    IStake filst_stake;


    constructor(
        address _filst,
        address _cFILST,
        address _efil_filst_lp,
        address _filst_usdt_lp,
        address _efil_filst_lp_stake,
        address _filst_usdt_lp_stake,
        address _filst_stake
    ){
        filst = IToken(_filst);
        filst_usdt_lp = IToken(_filst_usdt_lp);
        efil_filst_lp = IToken(_efil_filst_lp);
        cFILST = IToken(_cFILST);
        efil_filst_lp_stake = IStake(_efil_filst_lp_stake);
        filst_usdt_lp_stake = IStake(_filst_usdt_lp_stake);
        filst_stake = IStake(_filst_stake);
    }


    //获取LP中用户FILST量
    function getLpFILSTAmount(IToken lp, address account) public view returns (uint amount){
        return lp.balanceOf(account) * filst.balanceOf(address(lp)) / lp.totalSupply();
    }


    function getLpFILSTAmounts(IToken lp, address[] memory accounts) public view returns (uint[] memory amounts){
        amounts = new uint[](accounts.length);
        for (uint i = 0; i < accounts.length; i ++) {
            amounts[i] = getLpFILSTAmount(lp, accounts[i]);
        }
        return amounts;
    }

    function getStakeFILSTAmount(IStake stake, address account) public view returns (uint amount){
        uint stakeAmount = getLpFILSTAmount(IToken(stake.property()), address(stake));
        (uint accountState,,) = stake.accountState(account);
        return accountState * stakeAmount / IToken(stake.property()).balanceOf(address(stake));
    }

    function getStakeFILSTAmounts(IStake stake, address[] memory accounts) public view returns (uint[] memory amounts){
        amounts = new uint[](accounts.length);
        for (uint i = 0; i < accounts.length; i ++) {
            amounts[i] = getStakeFILSTAmount(stake, accounts[i]);
        }
        return amounts;
    }

    function getTokenAmounts(IToken token, address[] memory accounts) public view returns (uint[] memory amounts){
        amounts = new uint[](accounts.length);
        for (uint i = 0; i < accounts.length; i ++) {
            amounts[i] = token.balanceOf(accounts[i]);
        }
        return amounts;
    }

    function getFilstEfilLpAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getLpFILSTAmounts(efil_filst_lp, accounts);
    }

    function getFilstUsdtLpAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getLpFILSTAmounts(filst_usdt_lp, accounts);
    }

    function getFilstAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getTokenAmounts(filst, accounts);
    }

    function getCFilstAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getTokenAmounts(cFILST, accounts);
    }

    function getFilstEfilLpStakeAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getStakeFILSTAmounts(efil_filst_lp_stake, accounts);
    }

    function getFilstUsdtLpStakeAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        return getStakeFILSTAmounts(filst_usdt_lp_stake, accounts);
    }

    function getFilstStakeAmounts(address[] memory accounts) public view returns (uint[] memory amounts){
        amounts = new uint[](accounts.length);
        for (uint i = 0; i < accounts.length; i ++) {
            (uint userStake,,) = filst_stake.accountState(accounts[i]);
            amounts[i] = userStake;
        }
        return amounts;
    }
}
