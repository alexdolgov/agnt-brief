// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

import "../../interface/IMasterChef.sol";
import "../../interface/IERC20.sol";
import "../../interface/IStargateRouter.sol";
import "../../interface/IStargateRouterETH.sol";
import "../../interface/IPoolLpToken.sol";
import "../../interface/IERC20Burnable.sol";
import "../../lib/Math.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract LizardStrategyETHStgV5 is Initializable {
    address public owner;

    address public stg;

    address public sETH;
    uint16 public sETHPoolId;
    address public stgRouter;
    address public stgRouterETH;
    address public chefStg;
    uint256 public chefPoolId;

    address public lizardETH;
    address public timelock;

    bool public isExit;

    uint256 public maximumMint;

    mapping(address => bool) public whitelist;

    bool private locked;

    uint256 public mintFeesNumerator;
    uint256 public mintFeesDenominator;

    uint256 public redeemFeesNumerator;
    uint256 public redeemFeesDenominator;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    // this contract needs to accept ETH
    receive() external payable {}

    function initialize(address _lizardETH) public initializer {
        stg = 0x6694340fc020c5E6B96567843da2df01b2CE1eb6;

        sETH = 0x915A55e36A01285A14f05dE6e81ED9cE89772f8e;
        stgRouter = 0x53Bf833A5d6c4ddA888F69c22C88C9f356a41614;
        sETHPoolId = 13;

        stgRouterETH = 0xbf22f0f184bCcbeA268dF387a49fF5238dD23E40;

        chefStg = 0xeA8DfEE1898a7e0a59f7527F076106d7e44c2176;
        chefPoolId = 2;
        maximumMint = 1000 * 10 ** 18;

        mintFeesNumerator = 1;
        mintFeesDenominator = 10000;

        redeemFeesNumerator = 1;
        redeemFeesDenominator = 10000;

        isExit = false;

        lizardETH = _lizardETH;
        owner = msg.sender;
        timelock = msg.sender;
        _giveAllowances();
    }

    // MODIFIERS
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier nonReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }

    //UTILS

    function applyFees(
        uint256 _amount,
        uint256 feesNumerator,
        uint256 feesDenominator
    ) internal pure returns (uint256) {
        return _amount - (_amount * feesNumerator) / feesDenominator;
    }

    // TIMELOCK
    function changeTimelock(address _timelock) public {
        require(msg.sender == timelock, "Not old timelock");
        timelock = _timelock;
    }

    function withdrawETHGrowth() public {
        require(msg.sender == timelock, "not timelock");
        uint256 sETHTotalLiquidity = IPoolLpToken(sETH).totalLiquidity();
        uint256 sETHTotalSupply = IPoolLpToken(sETH).totalSupply();

        require(
            sETHTotalLiquidity > 0 && sETHTotalSupply > 0,
            "cant convert (S*ETH) to ETH when (S*ETH).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardETHTotalSupply = IERC20(lizardETH).totalSupply();

        (uint256 balanceSETHChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSETH = IERC20(sETH).balanceOf(address(this));
        uint256 balanceETH = address(this).balance;

        uint256 balanceSETHInETH = ((balanceSETH + balanceSETHChef) *
            sETHTotalLiquidity) / sETHTotalSupply; // /!\ decimal sETH == decimal ETH

        // check we have enough sETH and ETH to redeem all LizardETH supplies
        if (balanceSETHInETH + balanceETH > lizardETHTotalSupply) {
            //we have more than necessary to redeem 100% of the LizardETH supply.

            //we unstack the growth
            uint256 amountETHGrowth = balanceSETHInETH +
                balanceETH -
                lizardETHTotalSupply;
            if (amountETHGrowth > balanceETH) {
                uint256 amountSETHToRedeem = ((amountETHGrowth - balanceETH) *
                    sETHTotalSupply) / sETHTotalLiquidity;

                if (amountSETHToRedeem > balanceSETH) {
                    IMasterChef(chefStg).withdraw(
                        chefPoolId,
                        Math.min(
                            amountSETHToRedeem - balanceSETH,
                            balanceSETHChef
                        )
                    );
                }

                //we prefer to keep ETH on the contract than sETH so we redeem all
                IStargateRouter(stgRouter).instantRedeemLocal(
                    sETHPoolId,
                    IERC20(sETH).balanceOf(address(this)),
                    address(this)
                );
            }
            //we transfer the growth ETH

            payable(msg.sender).transfer(
                Math.min(amountETHGrowth, address(this).balance)
            );
        }
    }

    // ONLYOWNER

    function updateFees(
        uint256 _mintFeesNumerator,
        uint256 _mintFeesDenominator,
        uint256 _redeemFeesNumerator,
        uint256 _redeemFeesDenominator
    ) public onlyOwner {
        require(
            _mintFeesNumerator*100 <= _mintFeesDenominator,
            "mint fees must be less than 1%"
        );
        require(
            _redeemFeesNumerator*100 <= _redeemFeesDenominator,
            "redeem fees must be less than 1%"
        );

        mintFeesNumerator = _mintFeesNumerator;
        mintFeesDenominator = _mintFeesDenominator;

        redeemFeesNumerator = _redeemFeesNumerator;
        redeemFeesDenominator = _redeemFeesDenominator;
    }

    function setMaximumMint(uint256 _maximumMint) public onlyOwner {
        maximumMint = _maximumMint;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function addToWhitelist(address _address) public onlyOwner {
        whitelist[_address] = true;
    }

    function removeFromWhitelist(address _address) public onlyOwner {
        if (whitelist[_address]) {
            delete whitelist[_address];
        }
    }

    function withdrawReward() public onlyOwner {
        IMasterChef(chefStg).deposit(chefPoolId, 0);
        IERC20(stg).transfer(msg.sender, IERC20(stg).balanceOf(address(this)));
    }

    function giveAllowances() public onlyOwner {
        _giveAllowances();
    }

    function exit() public onlyOwner {
        (uint256 balanceSETHChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        IMasterChef(chefStg).withdraw(chefPoolId, balanceSETHChef);
        IStargateRouter(stgRouter).instantRedeemLocal(
            sETHPoolId,
            IERC20(sETH).balanceOf(address(this)),
            address(this)
        );
        isExit = true;
    }

    function stopExit() public onlyOwner {
        isExit = false;
    }

    //PUBLIC
    function pegStatus()
        public
        view
        returns (uint256 stackedAmount, uint256 supplyAmount)
    {
        uint256 sETHTotalLiquidity = IPoolLpToken(sETH).totalLiquidity();
        uint256 sETHTotalSupply = IPoolLpToken(sETH).totalSupply();
        require(
            sETHTotalLiquidity > 0 && sETHTotalSupply > 0,
            "cant convert (S*ETH) to ETH when (S*ETH).totalLiquidity == 0 || totalSupply == 0"
        );
        uint256 lizardETHTotalSupply = IERC20(lizardETH).totalSupply();

        (uint256 balanceSETHChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );

        uint256 balanceSETHInETH = ((balanceSETHChef +
            IERC20(sETH).balanceOf(address(this))) * sETHTotalLiquidity) /
            sETHTotalSupply;

        return (balanceSETHInETH + address(this).balance, lizardETHTotalSupply);
    }

    function depositETH() public payable nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        uint256 _amountETH = msg.value;
        require(
            IERC20Burnable(lizardETH).totalSupply() + _amountETH < maximumMint,
            "maximum lizardETH minted"
        );

        IERC20Burnable(lizardETH).mint(
            msg.sender,
            applyFees(_amountETH, mintFeesNumerator, mintFeesDenominator)
        );

        if (!isExit) //we stack the ETH
        {
            // convert all ETH we have to sETH
            IStargateRouterETH(stgRouterETH).addLiquidityETH{
                value: address(this).balance
            }();

            IMasterChef(chefStg).deposit(
                chefPoolId,
                IERC20(sETH).balanceOf(address(this))
            ); //deposit all we have
        }
        emit Deposit(_amountETH);
    }

    function withdraw(uint256 _amountETH) public nonReentrant {
        require(
            tx.origin == msg.sender || whitelist[msg.sender],
            "only no smart contract or whitelist"
        );
        require(_amountETH > 0, "amount must be greater than 0");

        uint256 sETHTotalLiquidity = IPoolLpToken(sETH).totalLiquidity();
        uint256 sETHTotalSupply = IPoolLpToken(sETH).totalSupply();
        require(
            sETHTotalLiquidity > 0 && sETHTotalSupply > 0,
            "cant convert (S*ETH) to ETH when (S*ETH).totalLiquidity == 0 || totalSupply == 0"
        );

        uint256 lizardETHTotalSupply = IERC20(lizardETH).totalSupply();

        (uint256 balanceSETHChef, ) = IMasterChef(chefStg).userInfo(
            chefPoolId,
            address(this)
        );
        uint256 balanceSETH = IERC20(sETH).balanceOf(address(this));
        uint256 balanceETH = address(this).balance;

        uint256 balanceSETHInETH = ((balanceSETH + balanceSETHChef) *
            sETHTotalLiquidity) / sETHTotalSupply;

        uint256 finalAmountETH = applyFees(
            _amountETH,
            redeemFeesNumerator,
            redeemFeesDenominator
        );

        if (
            balanceSETHInETH + balanceETH < lizardETHTotalSupply
        ) //not enough  to redeem with 1/1 ratio
        {
            finalAmountETH =
                (finalAmountETH * (balanceSETHInETH + balanceETH)) /
                lizardETHTotalSupply;
        }

        if (finalAmountETH > balanceETH) {
            uint256 amountSETHToRedeem = ((finalAmountETH - balanceETH) *
                sETHTotalSupply) / sETHTotalLiquidity;

            if (amountSETHToRedeem > balanceSETH) {
                IMasterChef(chefStg).withdraw(
                    chefPoolId,
                    Math.min(amountSETHToRedeem - balanceSETH, balanceSETHChef)
                );
            }

            IStargateRouter(stgRouter).instantRedeemLocal( //keep ETH on the contract instead of sETH
                sETHPoolId,
                IERC20(sETH).balanceOf(address(this)),
                address(this)
            );
        }

        

        uint256 realAmountETH = Math.min(finalAmountETH, address(this).balance);
        IERC20Burnable(lizardETH).burn(msg.sender, _amountETH*realAmountETH/finalAmountETH); // burn after read totalSupply

        payable(msg.sender).transfer(realAmountETH);
        emit Withdraw(_amountETH);
    }

    // INTERNAL
    function _giveAllowances() internal {
        IERC20(sETH).approve(chefStg, type(uint256).max);
    }
}
