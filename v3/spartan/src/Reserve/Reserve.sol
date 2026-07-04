// File: iROUTER.sol


pragma solidity 0.8.3;
interface iROUTER {
    function addLiquidityForMember(uint, uint, address, address) external payable returns (uint);
      function synthMinting() external view returns (bool);
      function lastMonth() external view returns(uint); 
      function mapAddress_30DayDividends(address) external returns (uint);
      function mapAddress_Past30DayPoolDividends(address) external returns (uint);
      function addLiquidityAsym(uint input, bool fromBase, address token) external;
      function removeLiquidityExactAsym(uint input, bool fromBase, address token) external;
      function syncPool(address, uint256) external;
}
// File: iPOOLFACTORY.sol


pragma solidity 0.8.3;
interface iPOOLFACTORY {
    function isCuratedPool(address) external view returns (bool);
    function addCuratedPool(address) external;
    function removeCuratedPool(address) external;
    function isPool(address) external returns (bool);
    function getPool(address) external view returns(address);
    function getVaultAssets() external view returns(address [] memory);
    function getPoolAssets() external view returns(address [] memory);
    function curatedPoolCount() external view returns (uint);
}

// File: TransferHelper.sol


pragma solidity >=0.8.3;

library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferBNB(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: BNB_TRANSFER_FAILED');
    }
}
// File: iDAO.sol


pragma solidity 0.8.3;
interface iDAO {
    function ROUTER() external view returns(address);
    function DAOVAULT() external view returns(address);
    function BASE() external view returns(address);
    function LEND() external view returns(address);
    function UTILS() external view returns(address);
    function DAO() external view returns (address);
    function RESERVE() external view returns(address);
    function SYNTHVAULT() external view returns(address);
    function BONDVAULT() external view returns(address);
    function SYNTHFACTORY() external view returns(address);
    function POOLFACTORY() external view returns(address);
    function depositForMember(address pool, uint256 amount, address member) external;
    function currentProposal() external view returns (uint);
    function mapPID_open(uint) external view returns (bool);
    function isListed(address) external view returns (bool);
    function arrayMembers(uint) external view returns (address);
    function mapMember_lastTime(address) external view returns (uint);
}
// File: iBASE.sol


pragma solidity 0.8.3;

interface iBASE {
    function DAO() external view returns (iDAO);
    function secondsPerEra() external view returns (uint256);
    function changeDAO(address) external;
    function setParams(uint256, uint256) external;
    function flipEmissions() external;
    function mintFromDAO(uint256, address) external; 
    function burn(uint256) external; 
}
// File: iBEP20.sol


pragma solidity 0.8.3;
interface iBEP20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function burn(uint) external;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: Reserve.sol


pragma solidity 0.8.3;







contract Reserve {
    address public immutable BASE;  // Address of SPARTA base token contract
    address public DEPLOYER;        // Address that deployed the contract | can be purged to address(0)
    bool public emissions;          // Is SPARTA emitting from RESERVE -> incentive addresses
    bool public globalFreeze;       // Is there a global pause in place
    uint256 public freezeTime;
    address public polTokenAddress;
    address public polPoolAddress;
    uint256 public polEmission;
    uint256 public polTime;
    bool public polStatus;
    uint256 public polClaim;
    uint256 public realiseClaim;
    

    // Restrict access
    modifier onlyGrantor() {
        require(msg.sender == _DAO().DAO() || msg.sender == _DAO().ROUTER() || msg.sender == _DAO().SYNTHVAULT() || msg.sender == DEPLOYER || msg.sender == _DAO().LEND(), "!DAO"); 
        _; 
    }
    modifier onlyDAO() {
        require(msg.sender == _DAO().DAO() || msg.sender == DEPLOYER);
        _;
    }
    event RealisePOL(address pool, uint256 amount);

    constructor (address _base) {
        BASE = _base;
        DEPLOYER = msg.sender;
        polTime = block.timestamp;
        polEmission = 3600;
        polClaim = 5;//100 bp 
        polStatus = false;
        realiseClaim = 100;//bp
    }

    function _DAO() internal view returns(iDAO) {
        return iBASE(BASE).DAO();
    }

    function setParams(address token) external onlyDAO (){
        address _polPoolAddress = iPOOLFACTORY(_DAO().POOLFACTORY()).getPool(token);
        require(iPOOLFACTORY(_DAO().POOLFACTORY()).isCuratedPool(_polPoolAddress) == true);
        require(token != address(0));
        polTokenAddress = token;
        polPoolAddress = _polPoolAddress;
        performApprovals();
    }

    function setPOLParams(uint256 newPolEmission, uint256 newPolClaim, uint256 newRealiseClaim) external onlyDAO {
        polEmission = newPolEmission;
        polClaim = newPolClaim;
        realiseClaim = newRealiseClaim;
    }

    // Send SPARTA to an incentive address (Vault harvest, dividends etc)
    function grantFunds(uint amount, address to) external onlyGrantor {
        uint reserve = iBEP20(BASE).balanceOf(address(this)); // Get RESERVE's SPARTA balance
        if(amount > 0){ // Skip if amount is not valid
            if(emissions){ // Skip if emissions are off
                if(amount > reserve){
                    TransferHelper.safeTransfer( BASE, to, reserve);
                } else {
                    TransferHelper.safeTransfer(BASE, to, amount);
                }
                addPOL();
            }
        }
    }

    // Send POL to an incentive address
    function grantPOLFunds(uint amount, address to) external onlyDAO {
        uint reserve = iBEP20(polPoolAddress).balanceOf(address(this)); // Get RESERVE's POL balance
        if(amount > 0){ // Skip if amount is not valid
            if(emissions){ // Skip if emissions are off
                if(amount > reserve){
                    TransferHelper.safeTransfer(polPoolAddress, to, reserve);
                } else {
                    TransferHelper.safeTransfer(polPoolAddress, to, amount);
                }
            }
        }
    }

    function realisePOL() external onlyDAO {
        uint256 polFloat = iBEP20(polPoolAddress).balanceOf(address(this));
        uint256 realiseAmount = polFloat * realiseClaim / 10000;
        iROUTER(_DAO().ROUTER()).removeLiquidityExactAsym(realiseAmount, false, polTokenAddress);  
        uint256 amountToken = iBEP20(polTokenAddress).balanceOf(address(this));
        iBEP20(polTokenAddress).transfer(polPoolAddress,amountToken);
        iROUTER(_DAO().ROUTER()).syncPool(polPoolAddress, amountToken); 
        emit RealisePOL(polPoolAddress, amountToken);
    }


    function flipEmissions() external onlyGrantor {
        emissions = !emissions; // Flip emissions on/off
    }
    function flipPol() external onlyGrantor {
        polStatus = !polStatus; // Flip emissions on/off
    }
    
    function performApprovals() public onlyDAO(){
        iBEP20(BASE).approve(_DAO().ROUTER(), 300000000000000000000000000);//entire supply called once
        iBEP20(polPoolAddress).approve(_DAO().ROUTER(), 300000000000000000000000000);//entire supply called once
    }

    function addPOL() internal {
     uint256 polAmount = (iBEP20(BASE).balanceOf(address(this)) * polClaim) / 10000; //get amount using balance of reserve
         if((block.timestamp > polTime) && polStatus){ 
              iROUTER(_DAO().ROUTER()).addLiquidityAsym(polAmount, true, polTokenAddress); 
              polTime = block.timestamp + polEmission;
        }
    }

    function setGlobalFreeze(bool freeze) external onlyGrantor {
        globalFreeze = freeze;
        if(freeze){
            freezeTime = block.timestamp;
        }else{
            freezeTime = 0;
        }
        emissions = !freeze;
    }
   
    // Can purge deployer once DAO is stable and final
    function purgeDeployer() external onlyGrantor {
        DEPLOYER = address(0);
    }
}