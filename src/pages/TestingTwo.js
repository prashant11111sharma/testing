const colorArray = ["yellow", "black", "white", "orange", 'pink', "red"]
const  TestingTwo = ()=> {
    return (
        <>
        <div>
            {colorArray?.map((index,flag)=>{
                return(
                    <div style={{height:'100px', width:'100px', backgroundColor:index}}>
                    dcsccdsvcer svcdjv dnse cnsd cns  {flag}
                    </div>
                )
            })}
        </div>
        </>
    )
}
export default   TestingTwo