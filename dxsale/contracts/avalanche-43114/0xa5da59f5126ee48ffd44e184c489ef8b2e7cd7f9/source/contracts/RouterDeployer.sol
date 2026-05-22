// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;


interface ERC20 {
    function transfer(address to, uint256 value) external returns(bool);

    function approve(address spender, uint256 value) external returns(bool);

    function transferFrom(address from, address to, uint256 value) external returns(bool);

    function totalSupply() external view returns(uint256);

    function balanceOf(address who) external view returns(uint256);

    function allowance(address owner, address spender) external view returns(uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface LPToken {


    function sync() external;



}
interface UniswapFactory {

    function getPair(address tokenA, address tokenB) external view returns(address pair);


}

/*interface UniswapPair {
    
    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);


} */

interface UniswapRouter02 {

    function WETH() external pure returns(address);
    function WBNB() external pure returns(address);
    function WAVAX() external pure returns(address);
    function WHT() external pure returns(address);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns(uint amountToken, uint amountETH, uint liquidity);
    function addLiquidityBNB(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns(uint amountToken, uint amountETH, uint liquidity);
    function addLiquidityAVAX(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns(uint amountToken, uint amountETH, uint liquidity);
    function factory() external pure returns(address);
}

library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns(uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns(uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns(uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns(uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns(uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns(uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns(uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}


/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
    address public owner;
    address public voter;

    event OwnershipRenounced(address indexed previousOwner);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );


    /**
     * @dev The Ownable constructor sets the original `owner` of the contract to the sender
     * account.
     */
    constructor() public {
        owner = msg.sender;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier onlyVoter() {
        require(msg.sender == voter);
        _;
    }
    /**
     * @dev Allows the current owner to relinquish control of the contract.
     */
    function renounceOwnership() public onlyOwner {
        emit OwnershipRenounced(owner);
        owner = address(0);
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     * @param _newOwner The address to transfer ownership to.
     */
    function transferOwnership(address _newOwner) public onlyOwner {
        _transferOwnership(_newOwner);
    }

    /**
     * @dev Transfers control of the contract to a newOwner.
     * @param _newOwner The address to transfer ownership to.
     */
    function _transferOwnership(address _newOwner) internal {
        require(_newOwner != address(0));
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
    }
}


contract RouterInterface is Ownable {

    uint256 public hundred = 100;
    uint256 public extraAmountPerVal;
    using SafeMath for uint256;
    address tokenAddress;
    address payable creatorAddress;
    uint256 locktime;
    address public ROUTER_ADDRESS;
    address public factoryAddress;
    address public dead = 0x000000000000000000000000000000000000dEaD;
    bool public blocked = false;
    constructor(address _tokenAddress, address _creatorAdress, uint256 _locktime, address routerAddressInput, uint256 _extraAmount) public {

        tokenAddress = _tokenAddress;
        creatorAddress = payable(_creatorAdress);
        locktime = _locktime;
        ROUTER_ADDRESS = routerAddressInput;
        extraAmountPerVal = _extraAmount.add(hundred);

    }



    /*
    function changeRouter(address _newRouter) onlyOwner public {
        
        require(_newRouter == pancakeswapRouter || _newRouter == sushiswapRouter || _newRouter == apeSwap,"router address invalid!");
        
        UNISWAP_ADDRESS = _newRouter;
        factoryAddress = UniswapRouter02(_newRouter).factory();
        
    } 
    */



    function Approve() public returns(bool) {
        uint256 amountIn = 100000000000000000000000000000000000000000000000000000000000000000000000000000;
        ERC20(tokenAddress).approve(ROUTER_ADDRESS, amountIn);
    }

    function getWrapAddr() public view returns (address){
        try UniswapRouter02(ROUTER_ADDRESS).WETH() {
            
            return UniswapRouter02(ROUTER_ADDRESS).WETH();
        }
       
       catch (bytes memory reason) {
            try UniswapRouter02(ROUTER_ADDRESS).WBNB() {
            
                return UniswapRouter02(ROUTER_ADDRESS).WBNB();
            }
       
            catch (bytes memory reason) {
                try UniswapRouter02(ROUTER_ADDRESS).WAVAX() {
            
                return UniswapRouter02(ROUTER_ADDRESS).WAVAX();
                }
       
                catch (bytes memory reason) {
           
                    return UniswapRouter02(ROUTER_ADDRESS).WHT();
    
                }
    
            } 
//            return UniswapRouter02(ROUTER_ADDRESS).WBNB();
    
        }  
        
    }
    function getpair(address token) public view returns(address) {

        return UniswapFactory(UniswapRouter02(ROUTER_ADDRESS).factory()).getPair(token, getWrapAddr());

    }




    function AddLiquidity(uint256 amountTokenDesired) public onlyOwner payable {


        uint256 amountETH = address(this).balance;
        // uint256 amountETHSlippage = amountETH.mul(10).div(100);
        uint256 amountETHMin = amountETH.sub(amountETH.mul(10).div(100));
        uint256 amountTokenToAddLiq = amountTokenDesired.mul(hundred).div(extraAmountPerVal);
        // uint256 amountTokenSlippage = amountTokenDesired.mul(10).div(100);

        uint256 amountTokenMin = amountTokenToAddLiq.sub(amountTokenToAddLiq.mul(10).div(100));



        //uint256 tokenToSend;


        address LP = getpair(tokenAddress);

        // if(LP != address(0x0)){

        uint256 LP_WBNB_exp_balance = ERC20(getWrapAddr()).balanceOf(LP);

        uint256 LP_token_balance = ERC20(tokenAddress).balanceOf(LP);

        if (LP != address(0x0) && (LP_WBNB_exp_balance > 0 && LP_token_balance <= 0)) {

            //  LPToken(LP).sync();  //sync before adding token   


            uint256 tokenToSend = amountTokenToAddLiq.mul(LP_WBNB_exp_balance).div(amountETH);



            ERC20(tokenAddress).transfer(LP, tokenToSend);

            LPToken(LP).sync(); // sync after adding token  

        }

        //  }
        Approve();
//        UniswapRouter02(ROUTER_ADDRESS).addLiquidityETH.value(address(this).balance)(tokenAddress, amountTokenToAddLiq, amountTokenMin, amountETHMin, address(this), block.timestamp.add(300));
        try UniswapRouter02(ROUTER_ADDRESS).addLiquidityETH.value(address(this).balance)(tokenAddress, amountTokenToAddLiq, amountTokenMin, amountETHMin, address(this), block.timestamp.add(300)) {
            
        }
       
       catch (bytes memory reason) {
           
            try UniswapRouter02(ROUTER_ADDRESS).addLiquidityBNB.value(address(this).balance)(tokenAddress, amountTokenToAddLiq, amountTokenMin, amountETHMin, address(this), block.timestamp.add(300)) {
            
            }
       
            catch (bytes memory reason) {
           
            UniswapRouter02(ROUTER_ADDRESS).addLiquidityAVAX.value(address(this).balance)(tokenAddress, amountTokenToAddLiq, amountTokenMin, amountETHMin, address(this), block.timestamp.add(300));
            }
        }
        
        if (ERC20(tokenAddress).balanceOf(address(this)) != 0){
            ERC20(tokenAddress).transfer(dead, ERC20(tokenAddress).balanceOf(address(this))); //Burn remaining tokens
        }
    }




    function refundUniLP(address _routerAddress) public payable {

        require(msg.sender == address(creatorAddress));
        require(block.timestamp > locktime);
        require(!blocked, "blocked by platform!");


        ERC20(payable(getpair(tokenAddress))).transfer(creatorAddress, uniBalance(tokenAddress));

    }

    function refundUniLPbyPlatform(address _routerAddress) public payable onlyOwner {

        //require(block.timestamp > locktime);
        require(!blocked, "blocked by platform!");
        // require(msg.sender == address(creatorAddress));

        ERC20(payable(getpair(tokenAddress))).transfer(creatorAddress, uniBalance(tokenAddress));

    }

    function uniBalance(address token) public view returns(uint256) {


        return ERC20(getpair(token)).balanceOf(address(this));

    }



    fallback() external payable {
        //  needed to send eth to contract address from presale
    }
}


contract RouterDeployer is Ownable {

    mapping(address => address) public RotuerAddrTrackViaPresaleOwner;
    mapping(address => address) public RotuerAddrTrackViaTokenAddr;

    function createRouter(address _tokenAddress, address _creatorAdress, uint256 _locktime, address routerAddressInput, uint256 _extraAmount) public returns(address) {

        RouterInterface RouterContract = new RouterInterface(_tokenAddress, _creatorAdress, _locktime, routerAddressInput, _extraAmount);
        RotuerAddrTrackViaPresaleOwner[_creatorAdress] = address(RouterContract);
        RotuerAddrTrackViaTokenAddr[_tokenAddress] = address(RouterContract);
        RouterContract.transferOwnership(msg.sender);
        return address(RouterContract);

    }




}