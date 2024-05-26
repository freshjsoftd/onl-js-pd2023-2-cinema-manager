import Carousel from 'react-material-ui-carousel'
import {posters} from '../../constants'
import { Box } from '@mui/material'

const styles = {
	imgContainerStyle: {
		position: 'relative',
		maxWidth: '100%',
		height: '70vh',
		overflow: 'hidden',
		color: "red"
	},
	imgStyle: {
		borderRadius: '15px',
		padding: '5px',
		maxWidth: '100%',
		maxHeight: '100%',
		position: 'absolute',
		left: '50%',
    transform: 'translate(-50%, 0)',
		objectFit: 'contain'
	}
}
function HomePage() {
  return (
    <>
        <Carousel>
            {posters.map((poster) => {
                return (
                    <Box key={poster.id} style={styles.imgContainerStyle}>
                        <img 
                            src={poster.url} 
                            alt={poster.url} 
                            style={styles.imgStyle}
                            />
                    </Box>
                )
            })}
        </Carousel>
    </>
  )
}

export default HomePage