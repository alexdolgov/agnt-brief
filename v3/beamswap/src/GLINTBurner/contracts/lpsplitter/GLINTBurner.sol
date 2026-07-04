// SPDX-License-Identifier: MIT
/*
                                                        %                                 
                                                       *+*                                          
                                                      %+++%                                         
                                                      %+++%                                         
                                                       \**                                          
                                                                                                    
                                                   \**        %                                     
                                                 %*++*      /++/                                    
                                                /++++*     /+++*                                    
                                               %++++++    /+++++\                                   
                                               *++++++\   \+++++*                                   
                                              /++++++++%  \+++++/                                   
                                       **\%   \+++++++++/  *++\%  %%%                               
                                       *+++* +++++++++++\  // %\+++*                               
                                       \++++++++++++++++++*% %*++++\                                
                                       /++++++++++++++++++++\+++++*                                 
                                       \++++++++++++++++++++++++++/    /**                          
                                       ++++++++++++=++++++++++++++\   %+++\                         
                                 \*  \++++==++++++==++++=++++++++*   \++++                         
                          /+*%   \++**+++++===+++++====++=+++++++++/  *++++%                        
                          *+++   /+++++++++====+++=====++=++++++++++  *+++*                         
                        %*++++/  \++++++++++==+++=======++++++++++++* /++*                          
                        *+++++/  *++++++==++++++========++===++++++++* %/%%                         
                       %+++++*  \++++++++===+++========-=====+++++++++*% *+*                        
                        ++++\  \+++++++++====================+++++++++++*+++%                       
                        %*++/ \++++==++++===========-========+++++++++++++++\                       
                          /\\\+++++-==+++=========---=========++=++++++++++++                       
                      \\\%  \++++++===++=========--:-===========-++++=+++++++/                      
                      ++++**++++++++=+++=========-:::-===========+++====+++++*                      
                      \+++++++++++++++=======-----::::-===---=====+++===++++++                      
                      %+++++++++++==+========-::-::::::---:-=======+++-=++++++%                     
                       \++++++++++===========-:::::::::::::-=======+++=+++++++                      
                        *++++++++=========----:::::::::::::-========+++++++++*                      
                        %*+++++++=========-:::::::::::::::::-========++===+++%                      
                          \++++++-========-:::::::::::::::::--=-=========+++/                       
                           %*++++-=======-::::::::::::::::::::-:-========++/                        
                             %\++====-==-:::::::::::::::::::::::-=======+*%                         
                                /+==-:--:::::::::::::::::::::::::-=====\%                           
                                  %\+--::::::::::::::::::::::::::-=+\%                              
                                      %/*+---::::::::::::::--=+/%                                  
                                            %%//\/////////%          
*/
pragma solidity 0.8.11;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IBeamPair.sol";
import "./interfaces/IBeamFactory.sol";

contract GLINTBurner is Ownable {
    using SafeERC20 for IERC20;
    IBeamFactory internal constant FACTORY =
        IBeamFactory(0x985BcA32293A7A496300a48081947321177a86FD);
    IERC20 internal constant GLINT =
        IERC20(0xcd3B51D98478D53F4515A306bE565c6EebeF1D58);
    address internal constant DEAD = 0x000000000000000000000000000000000000dEaD;
    address internal constant WGLMR =
        0xAcc15dC74880C9944775448304B263D191c6077F;
    address public usdc;
    uint256 public percentage = 10000; //100%
    uint256 public treasuryPerc = 61;
    uint256 public burnPerc = 39;
    address public devAddress = 0x412489b1876E710e616c4300a78897408abcBbFc;

    event Burned(uint256 timestamp, uint256 burnedAmount);

    constructor(address _usdc) {
        usdc = _usdc;
    }

    function setPercentage(uint256 _amount) external onlyOwner {
        percentage = _amount;
    }

    function setDevAddr(address _addr) external onlyOwner {
        require(_addr != address(0), "plz no zero address");
        devAddress = _addr;
    }

    function setUsdc(address _addr) external onlyOwner {
        require(_addr != address(0), "plz no zero address");
        usdc = _addr;
    }

    function setTreasuryPerc(uint256 _amount) external onlyOwner {
        treasuryPerc = _amount;
    }

    function setBurnPerc(uint256 _amount) external onlyOwner {
        burnPerc = _amount;
    }

    function withdrawLPs(address[] calldata _lp) external onlyOwner {
        uint256 length = _lp.length;
        for (uint256 i; i < length; ) {
            withdrawLP(address(_lp[i]));
            unchecked {
                ++i;
            }
        }
    }

    function withdrawLP(address lp) public onlyOwner {
        IERC20 token = IERC20(address(lp));
        token.safeTransfer(owner(), token.balanceOf(address(this)));
    }

    function furnace() external {
        uint256 wglmrBalance = IERC20(WGLMR).balanceOf(address(this));
        IERC20 usdcToken = IERC20(usdc);
        _swap(
            WGLMR,
            address(GLINT),
            ((wglmrBalance * burnPerc) / 100),
            address(this)
        ); // convert GLMR to GLINT for burning
        _swap(
            WGLMR,
            usdc,
            ((wglmrBalance * treasuryPerc) / 100),
            address(this)
        ); // convert GLMR to USDC for treasury
        uint256 balance = IERC20(address(GLINT)).balanceOf(address(this));
        uint256 burnAmount = (balance * percentage) / 10000;
        GLINT.safeTransfer(DEAD, burnAmount); // burn GLINT
        usdcToken.safeTransfer(devAddress, usdcToken.balanceOf(address(this))); // transfer usdc to treasury
        emit Burned(block.timestamp, burnAmount);
    }

    function _swap(
        address fromToken,
        address toToken,
        uint256 amountIn,
        address to
    ) internal returns (uint256 amountOut) {
        // Checks
        // X1 - X5: OK
        IBeamPair pair = IBeamPair(FACTORY.getPair(fromToken, toToken));
        require(address(pair) != address(0), "Beamsplitter: Cannot convert");

        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        (uint256 reserveInput, uint256 reserveOutput) = fromToken ==
            pair.token0()
            ? (reserve0, reserve1)
            : (reserve1, reserve0);
        IERC20(fromToken).safeTransfer(address(pair), amountIn);
        uint256 amountInput = IERC20(fromToken).balanceOf(address(pair)) -
            reserveInput; // calculate amount that was transferred, this accounts for transfer taxes

        amountOut = getAmountOut(amountInput, reserveInput, reserveOutput);
        (uint256 amount0Out, uint256 amount1Out) = fromToken == pair.token0()
            ? (uint256(0), amountOut)
            : (amountOut, uint256(0));
        pair.swap(amount0Out, amount1Out, to, new bytes(0));
    }

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) internal pure returns (uint256 amountOut) {
        require(amountIn > 0, "Beamsplitter: INSUFFICIENT_INPUT_AMOUNT");
        require(
            reserveIn > 0 && reserveOut > 0,
            "Beamsplitter: INSUFFICIENT_LIQUIDITY"
        );
        uint256 amountInWithFee = amountIn * 997;
        uint256 numerator = amountInWithFee * reserveOut;
        uint256 denominator = (reserveIn * 1000) + amountInWithFee;
        amountOut = numerator / denominator;
    }
}
