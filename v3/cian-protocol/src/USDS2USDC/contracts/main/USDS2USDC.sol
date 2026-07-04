// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//usdc<<->>dai
interface IDssLitePsm {
    //dai->usdc
    function buyGem(address usr, uint256 gemAmt) external returns (uint256 daiInWad);

    //usdc->dai
    function sellGem(address usr, uint256 gemAmt) external returns (uint256 daiOutWad);
}

//dai<<->>usds
interface IDaiUsds {
    function daiToUsds(address usr, uint256 wad) external;

    function usdsToDai(address usr, uint256 wad) external;
}

contract USDS2USDC {
    IERC20 public constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    IERC20 public constant USDS = IERC20(0xdC035D45d973E3EC169d2276DDab16f1e407384F);

    IERC20 public constant DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    //usdc<<->>dai
    IDssLitePsm public constant DssLitePsm = IDssLitePsm(0xf6e72Db5454dd049d0788e411b06CfAF16853042);

    //dai<<->>usds
    IDaiUsds public constant DaiUsds = IDaiUsds(0x3225737a9Bbb6473CB4a45b7244ACa2BeFdB276A);

    event Usdc2Usds(address usr, uint256 usdsAmount, uint256 usdcAmount);
    event Usds2Usdc(address usr, uint256 usdsAmount, uint256 usdcAmount);

    function usdc2usds(uint256 _fromAmount) external returns (uint256) {
        // usdc->dai
        USDC.transferFrom(msg.sender, address(this), _fromAmount);
        USDC.approve(address(DssLitePsm), _fromAmount);
        DssLitePsm.sellGem(address(this), _fromAmount);

        //  dai->usds
        uint256 daiAmount_ = DAI.balanceOf(address(this));
        DAI.approve(address(DaiUsds), daiAmount_);
        DaiUsds.daiToUsds(address(this), daiAmount_);
        uint256 usdsAmount_ = USDS.balanceOf(address(this));
        USDS.transfer(msg.sender, usdsAmount_);

        emit Usds2Usdc(msg.sender, _fromAmount, usdsAmount_);
        return usdsAmount_;
    }

    function usds2usdc(uint256 _fromAmount) external returns (uint256) {
        // usds->dai
        USDS.transferFrom(msg.sender, address(this), _fromAmount);
        USDS.approve(address(DaiUsds), _fromAmount);
        DaiUsds.usdsToDai(address(this), _fromAmount);

        // dai->usdc
        uint256 daiAmount_ = DAI.balanceOf(address(this));
        DAI.approve(address(DssLitePsm), daiAmount_);
        DssLitePsm.buyGem(address(this), daiAmount_ / 1e12);
        uint256 usdcAmount_ = USDC.balanceOf(address(this));
        USDC.transfer(msg.sender, usdcAmount_);

        emit Usds2Usdc(msg.sender, _fromAmount, usdcAmount_);
        return usdcAmount_;
    }
}
