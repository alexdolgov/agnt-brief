pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT


import "./CS721.sol";
import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IPancakePair.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract CS721Factory is Ownable {

    IERC20 public immutable CoinSack = IERC20(0x125Ce3f13950C5fA94397927F88C352FdED680Ad);
    IPancakeRouter02 public immutable PancakeRouter = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IPancakePair public immutable CoinSackPancakePair = IPancakePair(0x283fF56b7A7A343912E2fD084b3a7A5CEaF1C429);
    address public immutable DeadAddress = 0x000000000000000000000000000000000000dEaD;

    CS721 private _cs721;
    uint256 private _mintFeeCS = 2000000000;

    bool public canMintHere = false;


    constructor() {
        _cs721 = new CS721();
    }


    function mintWithCS() public {
        require(canMintHere, "this factory cannot mint");
        require(CoinSack.allowance(msg.sender, address(this)) >= _mintFeeCS, "factory CS allowance not provided");
        CoinSack.transferFrom(msg.sender, DeadAddress, _mintFeeCS);
        (address tokenAddress, uint256 tokenId) =  _mint(msg.sender);
        emit Mint(tokenAddress, tokenId);
    }

    function mintWithBNB() public payable {
        require(canMintHere, "this factory cannot mint");
        uint256 mintFeeBNB = _getMintFeeBNB();
        require(msg.value >= mintFeeBNB, "message value does not cover mint fee");
        if(msg.value > mintFeeBNB) {
            payable(msg.sender).transfer(msg.value - mintFeeBNB);
        }
        address[] memory path = new address[](2);
        path[0] = PancakeRouter.WETH();
        path[1] = address(CoinSack);
        PancakeRouter.swapExactETHForTokensSupportingFeeOnTransferTokens{value: mintFeeBNB}(0, path, DeadAddress, block.timestamp + 300);
        (address tokenAddress, uint256 tokenId) =  _mint(msg.sender);
        emit Mint(tokenAddress, tokenId);
    }

    function getMintFeeCS() public view returns (uint256) {
        return _mintFeeCS;
    }

    function getMintFeeBNB() public view returns (uint256) {
        return _getMintFeeBNB();
    }

    function _mint(address to) internal returns (address, uint256) {
        if(_cs721.mintsRemaining() == 0){
            _cs721 = new CS721();
        }
        return _cs721.mint(to);
    }

    function _getMintFeeBNB() internal view returns (uint256) {
       (uint256 reserve0, uint256 reserve1, ) = CoinSackPancakePair.getReserves();
       return (uint256(PancakeRouter.getAmountIn(_mintFeeCS*115/100, reserve1, reserve0)));
    }

    function setCanMintHere(bool canMintHere_) public onlyOwner() {
        canMintHere = canMintHere_;
    }

    function setMintFeeCS(uint256 mintFeeCS_) public onlyOwner() {
        _mintFeeCS = mintFeeCS_;
    }

    event Mint(address tokenAddress, uint256 tokenId);

}